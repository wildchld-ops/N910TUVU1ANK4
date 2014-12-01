.class Lcom/android/mms/saverestore/SaveRestoreOperation$6;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$6;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "Inside positive button click called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
