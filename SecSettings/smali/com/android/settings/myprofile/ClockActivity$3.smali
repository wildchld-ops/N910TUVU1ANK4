.class Lcom/android/settings/myprofile/ClockActivity$3;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myprofile/ClockActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/ClockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity$3;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectCustomColor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$3;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$600(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity$3;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;
    invoke-static {v1}, Lcom/android/settings/myprofile/ClockActivity;->access$500(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/GradientColorPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/myprofile/GradientColorPickerView;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setCustomColor(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$3;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$300(Lcom/android/settings/myprofile/ClockActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "************** Callback from SpLitColorPickerView -> onSelectCustomColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
