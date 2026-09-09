#include <jni.h>

// static float قابل للتعديل
static float nativeStaticValue = 100.0f;

extern "C" JNIEXPORT jfloat JNICALL
Java_com_example_game_MainActivity_getNativeValue(JNIEnv* env, jobject thiz) {
    return nativeStaticValue;
}
