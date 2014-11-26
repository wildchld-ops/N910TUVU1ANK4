.class Lcom/android/settings/BlackScreenSettings$ShowBriefingInformationObserver;
.super Landroid/database/ContentObserver;
.source "BlackScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BlackScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowBriefingInformationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BlackScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/BlackScreenSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/BlackScreenSettings$ShowBriefingInformationObserver;->this$0:Lcom/android/settings/BlackScreenSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1    # Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/BlackScreenSettings$ShowBriefingInformationObserver;->this$0:Lcom/android/settings/BlackScreenSettings;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_briefing_information"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableShowBriefingInformation(Z)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
