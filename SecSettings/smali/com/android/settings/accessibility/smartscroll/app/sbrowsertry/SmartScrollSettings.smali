.class public Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;
.super Ljava/lang/Object;
.source "SmartScrollSettings.java"


# instance fields
.field private mScrollType:I

.field private mSettingsContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    iput p2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mScrollType:I

    return-void
.end method


# virtual methods
.method public checkSmartScroll()Z
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mScrollType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkSmartScrollEnalbed()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public checkSmartScrollEnalbed()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll_adv_web"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public checkSmartScrollMode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkSmartScrollEnalbed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "face_smart_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public checkVisualFeedbackEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll_visual_feedback_icon"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getSpeed()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method
