.class Lcom/android/settings/nfc/NfcSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const v8, 0x7f090306

    const v7, 0x7f090304

    const/4 v6, 0x5

    const/4 v5, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$000(Lcom/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    const-string v4, "nfc_android_beam_help"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/android/settings/nfc/NfcSettings;->access$102(Lcom/android/settings/nfc/NfcSettings;Landroid/preference/Preference;)Landroid/preference/Preference;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f090305

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
