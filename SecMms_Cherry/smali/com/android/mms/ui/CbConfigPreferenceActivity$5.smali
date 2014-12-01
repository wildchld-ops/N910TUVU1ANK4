.class Lcom/android/mms/ui/CbConfigPreferenceActivity$5;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    const-string v4, "pref_cb_my_channel_max_count"

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v6

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref_cb_my_channel_max_count_sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v2

    if-lt v2, v1, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v8, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v9, 0x7f0c0075

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    # setter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v6, v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1402(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_2
    check-cast p1, Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "is_checked"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$1100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sim_slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v9}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
