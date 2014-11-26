.class final Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASViewer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASViewer;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public CMASViewerSetData(Landroid/database/Cursor;)V
    .locals 10
    .param p1    # Landroid/database/Cursor;

    const v9, 0x7f0c0203

    const-string v5, "CMASViewer"

    const-string v6, "CMASViewerSetData"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0xe

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    # setter for: Lcom/android/mms/ui/CMASViewer;->msgId:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$202(Lcom/android/mms/ui/CMASViewer;J)J

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$302(Lcom/android/mms/ui/CMASViewer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    # setter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$402(Lcom/android/mms/ui/CMASViewer;J)J

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    # setter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$502(Lcom/android/mms/ui/CMASViewer;I)I

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/16 v6, 0x10

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    # setter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewer;->access$602(Lcom/android/mms/ui/CMASViewer;J)J

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    # setter for: Lcom/android/mms/ui/CMASViewer;->mLocked:I
    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewer;->access$702(Lcom/android/mms/ui/CMASViewer;I)I

    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMASViewerSetData msgId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgId:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$200(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgServiceCategory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgDate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgExpiry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLocked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->mLocked:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$700(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$800(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$900(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$300(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01f2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$500(Lcom/android/mms/ui/CMASViewer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM dd, yyyy, h:mmaa"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgDate:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$400(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1100(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM dd, yyyy, h:mmaa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->msgExpiry:J
    invoke-static {v7}, Lcom/android/mms/ui/CMASViewer;->access$600(Lcom/android/mms/ui/CMASViewer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # invokes: Lcom/android/mms/ui/CMASViewer;->CmasViewerSetTxtSize()V
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1300(Lcom/android/mms/ui/CMASViewer;)V

    return-void

    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01d3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01d4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01d5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01d6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0c01d7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c01f3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/mms/ui/CMASViewer;->access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "CMASViewer"

    const-string v6, "msgExpiry is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_4
        0x1112 -> :sswitch_0
        0x1113 -> :sswitch_1
        0x1114 -> :sswitch_1
        0x1115 -> :sswitch_2
        0x1116 -> :sswitch_2
        0x1117 -> :sswitch_2
        0x1118 -> :sswitch_2
        0x1119 -> :sswitch_2
        0x111a -> :sswitch_2
        0x111b -> :sswitch_3
        0x111c -> :sswitch_4
        0x111d -> :sswitch_4
        0x111e -> :sswitch_4
        0x111f -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # I

    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # invokes: Lcom/android/mms/ui/CMASViewer;->finishTask()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASViewer;->access$1400(Lcom/android/mms/ui/CMASViewer;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete with token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/CMASViewer;->access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewer;

    # getter for: Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/CMASViewer;->access$000(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    const/4 v2, -0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CMASViewer"

    const-string v3, "onQueryComplete cursor moveToNext"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->CMASViewerSetData(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_1
    .end sparse-switch
.end method
