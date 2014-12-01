.class Lcom/android/mms/rcs/RcsNewFeatureActivity$5;
.super Ljava/lang/Object;
.source "RcsNewFeatureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsNewFeatureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v13, v13, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "pref_key_new_feature_current"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v13, v13, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "pref_key_new_feature_hour"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v13, v13, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "pref_key_new_feature_week"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v13, v13, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "pref_key_new_feature_month"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long v8, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v13, v13, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-nez v13, :cond_0

    const-string v13, "pref_key_new_feature_current"

    invoke-interface {v10, v13, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v13, "pref_key_new_feature_hour"

    sget-wide v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mHour:J

    add-long/2addr v14, v8

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-nez v13, :cond_1

    const-string v13, "pref_key_new_feature_week"

    sget-wide v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mWeek:J

    add-long/2addr v14, v8

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_1
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v13, 0x4000000

    invoke-virtual {v1, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-nez v13, :cond_2

    const-string v13, "pref_key_new_feature_month"

    sget-wide v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mMonth:J

    add-long/2addr v14, v8

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    const-string v13, "pref_key_new_feature_current"

    const-wide/16 v14, 0x0

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
