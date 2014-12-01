.class public Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageSDMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VMessageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field Inflater:Landroid/view/LayoutInflater;

.field arMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field layout:I

.field private mIsMsgMultiMode:Z

.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->mIsMsgMultiMode:Z

    iput-object p2, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->layout:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$400(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgItem;

    iget-object v0, v0, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    const/16 v17, 0x0

    const/4 v12, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v17, p2

    move-object/from16 v12, v16

    check-cast v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    :cond_0
    if-nez v12, :cond_1

    new-instance v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f040064

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f0b01d3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const v18, 0x7f0b01d4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->from:Landroid/widget/TextView;

    const v18, 0x7f0b01d5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->body:Landroid/widget/TextView;

    const v18, 0x7f0b01d6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const v18, 0x7f0b0094

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v7, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->mIsMsgMultiMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_0
    check-cast p3, Landroid/widget/ListView;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v18

    if-eqz v18, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-eq v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/MsgItem;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/mms/ui/MsgItem;->boxId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/MsgItem;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/mms/ui/MsgItem;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/MsgItem;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/MsgItem;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/mms/ui/MsgItem;->date:Ljava/lang/String;

    iget-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    const v18, 0x7f020280

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v10, ""

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    :cond_6
    iget-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->from:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->body:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v18, "h:mma, yyyy MMM dd"

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v15, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const/16 v21, 0x1

    invoke-static/range {v18 .. v21}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_4
    iget-object v0, v12, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v17

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_2

    :cond_8
    const v18, 0x7f020281

    goto :goto_3

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4
.end method

.method public setMessageListMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->mIsMsgMultiMode:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->mIsMsgMultiMode:Z

    goto :goto_0
.end method
