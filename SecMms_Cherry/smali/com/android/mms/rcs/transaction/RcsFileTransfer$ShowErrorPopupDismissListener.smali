.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowErrorPopupDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
