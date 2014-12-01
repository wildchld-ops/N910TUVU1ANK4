.class Lcom/android/settings/nfc/NfcSettings$5;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->initSbeamEnabler()V
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

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$5;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$5;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->destroyHelpSbeam()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$700(Lcom/android/settings/nfc/NfcSettings;)V

    const/4 v0, 0x0

    return v0
.end method
