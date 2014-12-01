.class final Lcom/android/mms/ui/MessageUtils$13;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$13;->val$readReportDataMap:Ljava/util/Map;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$13;->val$status:I

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$13;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/android/mms/ui/MessageUtils$13$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageUtils$13$1;-><init>(Lcom/android/mms/ui/MessageUtils$13;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c04a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c04a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c004d

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
