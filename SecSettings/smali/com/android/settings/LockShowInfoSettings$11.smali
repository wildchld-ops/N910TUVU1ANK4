.class Lcom/android/settings/LockShowInfoSettings$11;
.super Ljava/lang/Object;
.source "LockShowInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockShowInfoSettings;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockShowInfoSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockShowInfoSettings$11;->this$0:Lcom/android/settings/LockShowInfoSettings;

    iput-object p2, p0, Lcom/android/settings/LockShowInfoSettings$11;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "LockShowInfoSettings"

    const-string v2, "showPermissionDialog onCancel disable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$11;->val$layout:Landroid/view/View;

    const v2, 0x7f0b0559

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$11;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # getter for: Lcom/android/settings/LockShowInfoSettings;->mViewType:I
    invoke-static {v1}, Lcom/android/settings/LockShowInfoSettings;->access$300(Lcom/android/settings/LockShowInfoSettings;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$11;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # getter for: Lcom/android/settings/LockShowInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/LockShowInfoSettings;->access$400(Lcom/android/settings/LockShowInfoSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$11;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # getter for: Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/LockShowInfoSettings;->access$500(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
