.class Lcom/android/settings/wifi/WifiTimer$4;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # getter for: Lcom/android/settings/wifi/WifiTimer;->mEndTimeCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # invokes: Lcom/android/settings/wifi/WifiTimer;->hideKeypad()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$100(Lcom/android/settings/wifi/WifiTimer;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$4;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setEnabled(Z)V

    goto :goto_0
.end method
