.class Lcom/android/mms/accessory/ReadReportActivity$2;
.super Ljava/lang/Object;
.source "ReadReportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/accessory/ReadReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/accessory/ReadReportActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/accessory/ReadReportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/accessory/ReadReportActivity$2;->this$0:Lcom/android/mms/accessory/ReadReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity$2;->this$0:Lcom/android/mms/accessory/ReadReportActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/accessory/ReadReportActivity;->updateReadReport(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/accessory/ReadReportActivity;->access$300(Lcom/android/mms/accessory/ReadReportActivity;Z)V

    return-void
.end method
