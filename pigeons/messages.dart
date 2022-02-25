import 'package:pigeon/java_generator.dart';
import 'package:pigeon/objc_generator.dart';
import 'package:pigeon/pigeon_lib.dart';

class TextureMessage {
  int? textureId;
}

class LoopingMessage {
  int? textureId;
  bool? isLooping;
}

class VolumeMessage {
  int? textureId;
  double? volume;
}

class PositionMessage {
  int? textureId;
  int? position;
}

class CreateMessage {
  String? asset;
  String? uri;
  String? packageName;
  String? formatHint;
}

@HostApi()
abstract class VideoPlayerApi {
  void initialize();
  TextureMessage create(CreateMessage msg);
  void dispose(TextureMessage msg);
  void setLooping(LoopingMessage msg);
  void setVolume(VolumeMessage msg);
  void play(TextureMessage msg);
  PositionMessage position(TextureMessage msg);
  void seekTo(PositionMessage msg);
  void pause(TextureMessage msg);
}

void configurePigeon(PigeonOptions opts) {
  opts = PigeonOptions(
    dartOut: '../video_player_platform_interface/lib/messages.dart',
    objcHeaderOut: 'ios/Classes/messages.h',
    objcSourceOut: 'ios/Classes/messages.m',
    copyrightHeader: opts.copyrightHeader,
    dartOptions: opts.dartOptions,
    dartTestOut: opts.dartTestOut,
    input: opts.input,
    objcOptions: ObjcOptions(
      prefix: 'FLT',
      copyrightHeader: opts.objcOptions!.copyrightHeader,
      header: opts.objcOptions!.header,
    ),
    javaOut:
        'android/src/main/java/io/flutter/plugins/videoplayer/Messages.java',
    javaOptions: JavaOptions(
      className: opts.javaOptions!.className,
      copyrightHeader: opts.javaOptions!.copyrightHeader,
      package: 'ext.videoplayer',
    ),
  );
}
