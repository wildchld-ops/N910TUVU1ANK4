.class final Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASMoreInfoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASMoreInfoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASMoreInfoViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASMoreInfoViewer;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "CMASMoreInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoSetData(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method
