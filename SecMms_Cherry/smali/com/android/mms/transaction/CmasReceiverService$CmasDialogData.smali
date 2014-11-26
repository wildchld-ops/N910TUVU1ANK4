.class Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
.super Ljava/lang/Object;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CmasReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmasDialogData"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field msgId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    return-void
.end method
