.class Lcom/android/systemui/statusbar/policy/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLoggingEnabled:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # invokes: Lcom/android/systemui/statusbar/policy/ToggleSlider;->sendLogs()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$200(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    # getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
