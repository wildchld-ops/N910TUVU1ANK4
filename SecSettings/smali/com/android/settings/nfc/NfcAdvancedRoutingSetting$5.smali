.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$5;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$5;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$5;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRouteListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
