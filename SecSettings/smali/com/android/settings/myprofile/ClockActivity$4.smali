.class Lcom/android/settings/myprofile/ClockActivity$4;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;


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

    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity$4;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$4;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$300(Lcom/android/settings/myprofile/ClockActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#############  Callback from GradientColorPickerView -> onColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$4;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$600(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setKeepCustomColor(Z)V

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$4;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # getter for: Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$600(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$4;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    # invokes: Lcom/android/settings/myprofile/ClockActivity;->reflectSelectedTextFontColor()V
    invoke-static {v0}, Lcom/android/settings/myprofile/ClockActivity;->access$400(Lcom/android/settings/myprofile/ClockActivity;)V

    return-void
.end method
