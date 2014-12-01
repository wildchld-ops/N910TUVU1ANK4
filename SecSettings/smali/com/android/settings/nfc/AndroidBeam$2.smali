.class Lcom/android/settings/nfc/AndroidBeam$2;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/AndroidBeam;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AndroidBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/AndroidBeam;->access$200(Lcom/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/nfc/AndroidBeam;->access$300(Lcom/android/settings/nfc/AndroidBeam;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam$2;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_beam_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
