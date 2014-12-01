.class Lcom/android/incallui/help/VoiceAndVideoCallTutorial$8;
.super Ljava/lang/Object;
.source "VoiceAndVideoCallTutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingScreenToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$8;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$8;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # invokes: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$600(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    const/4 v0, 0x0

    return v0
.end method
