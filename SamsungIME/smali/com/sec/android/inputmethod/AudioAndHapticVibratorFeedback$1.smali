.class Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$1;
.super Ljava/lang/Object;
.source "AudioAndHapticVibratorFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->requestStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$1;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
