.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowErrorPopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
