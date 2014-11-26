.class Lcom/android/phone/InCallSoundEQListPreference$5;
.super Ljava/lang/Object;
.source "InCallSoundEQListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallSoundEQListPreference;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallSoundEQListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallSoundEQListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # getter for: Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/InCallSoundEQListPreference;->access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "PERS"

    iget-object v6, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # getter for: Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/InCallSoundEQListPreference;->access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # invokes: Lcom/android/phone/InCallSoundEQListPreference;->isOffHook()Z
    invoke-static {v2}, Lcom/android/phone/InCallSoundEQListPreference;->access$200(Lcom/android/phone/InCallSoundEQListPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # invokes: Lcom/android/phone/InCallSoundEQListPreference;->showDisableSoundEQPopup(I)V
    invoke-static {v2, v0}, Lcom/android/phone/InCallSoundEQListPreference;->access$300(Lcom/android/phone/InCallSoundEQListPreference;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # invokes: Lcom/android/phone/InCallSoundEQListPreference;->checkingDiagnosis(I)V
    invoke-static {v2, v0}, Lcom/android/phone/InCallSoundEQListPreference;->access$400(Lcom/android/phone/InCallSoundEQListPreference;I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # getter for: Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/InCallSoundEQListPreference;->access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hearing_revision"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # getter for: Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/InCallSoundEQListPreference;->access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_eq_list_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # invokes: Lcom/android/phone/InCallSoundEQListPreference;->isOffHook()Z
    invoke-static {v2}, Lcom/android/phone/InCallSoundEQListPreference;->access$200(Lcom/android/phone/InCallSoundEQListPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v1}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
