.class Lcom/android/settings/myplace/MyPlaceProfileSettings$11;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iput-object p2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "MyPlaceSettings"

    const-string v4, "showMobileDateChargeEnableDialog enable"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;->val$layout:Landroid/view/View;

    const v4, 0x7f0b0195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings.myplace.MyPlaceProfileSettings"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enable"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-boolean v3, v3, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    if-eqz v3, :cond_1

    const-string v3, "DoNotShowDialogData"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    return-void

    :cond_1
    const-string v3, "DoNotShowDialogWlan"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
