.class Lcom/android/settings/motion2014/SMotionGuideHub2014$1;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    const-string v3, "air_motion_turn"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_motion_scroll"

    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->val$motion_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V
    invoke-static {v3, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    const-string v3, "surface_palm_swipe"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "surface_palm_swipe"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    const-string v3, "motion_merged_mute_pause"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "smart_pause"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    const-string v6, "com.sec.SMART_PAUSE_CHANGED"

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v3, v6, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_smart_pause_noti"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showSmartPauseDialog()V

    goto :goto_2
.end method
