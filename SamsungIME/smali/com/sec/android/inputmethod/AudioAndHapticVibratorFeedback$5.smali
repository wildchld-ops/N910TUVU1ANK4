.class Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;
.super Ljava/lang/Object;
.source "AudioAndHapticVibratorFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V
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

    iput-object p1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    iput p2, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;->val$primaryCode:I

    iput-boolean p3, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;->val$up:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    # getter for: Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->access$000(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;->val$primaryCode:I

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;->val$up:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZZ)V

    return-void
.end method
