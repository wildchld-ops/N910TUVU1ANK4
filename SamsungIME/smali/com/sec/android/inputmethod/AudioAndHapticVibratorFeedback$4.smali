.class Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;
.super Ljava/lang/Object;
.source "AudioAndHapticVibratorFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

.field final synthetic val$primaryCode:I

.field final synthetic val$up:Z


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    iput p2, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;->val$primaryCode:I

    iput-boolean p3, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;->val$up:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    # getter for: Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->access$000(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;->val$primaryCode:I

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;->val$up:Z

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->playSoundEffect(IZ)V

    return-void
.end method
