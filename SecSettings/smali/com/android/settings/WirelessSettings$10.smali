.class Lcom/android/settings/WirelessSettings$10;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings$10;->this$0:Lcom/android/settings/WirelessSettings;

    iput-object p2, p0, Lcom/android/settings/WirelessSettings$10;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "setPositiveButton"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/WirelessSettings$10;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$10;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/WirelessSettings$10;->this$0:Lcom/android/settings/WirelessSettings;

    # invokes: Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V
    invoke-static {v0}, Lcom/android/settings/WirelessSettings;->access$600(Lcom/android/settings/WirelessSettings;)V

    return-void
.end method
