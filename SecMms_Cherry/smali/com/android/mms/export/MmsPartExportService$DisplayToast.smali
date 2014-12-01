.class Lcom/android/mms/export/MmsPartExportService$DisplayToast;
.super Ljava/lang/Object;
.source "MmsPartExportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/export/MmsPartExportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayToast"
.end annotation


# instance fields
.field private final mDuration:I

.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/mms/export/MmsPartExportService;


# direct methods
.method constructor <init>(Lcom/android/mms/export/MmsPartExportService;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/export/MmsPartExportService$DisplayToast;->this$0:Lcom/android/mms/export/MmsPartExportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/export/MmsPartExportService$DisplayToast;->mText:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/mms/export/MmsPartExportService$DisplayToast;->mDuration:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/export/MmsPartExportService$DisplayToast;->this$0:Lcom/android/mms/export/MmsPartExportService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/export/MmsPartExportService$DisplayToast;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/mms/export/MmsPartExportService$DisplayToast;->mDuration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
