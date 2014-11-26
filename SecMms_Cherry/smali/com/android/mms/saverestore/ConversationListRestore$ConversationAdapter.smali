.class Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/ConversationListRestore;


# direct methods
.method public constructor <init>(Lcom/android/mms/saverestore/ConversationListRestore;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object/from16 v14, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;

    invoke-virtual {v7}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020282

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v5, 0x0

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->access$400(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f04003e

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    :cond_0
    const v23, 0x7f0b0151

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->getDate()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v23, 0x7f0b004a

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->size()I

    move-result v23

    if-lez v23, :cond_1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v23, 0x7f0b006e

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/android/mms/saverestore/ConversationListRestore$ConversationSms;->getText()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v23, 0x7f0b014f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    const v23, 0x7f0b0049

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/QuickContactBadge;

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->size()I

    move-result v23

    if-lez v23, :cond_2

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    const v23, 0x7f0b0094

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mMultiMode:Z
    invoke-static/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->access$500(Lcom/android/mms/saverestore/ConversationListRestore;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->access$600(Lcom/android/mms/saverestore/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->access$700(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v11

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    packed-switch v11, :pswitch_data_0

    :goto_1
    const/16 v23, 0x7

    move/from16 v0, v23

    if-eq v11, v0, :cond_3

    const/16 v23, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-static {v0, v11}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-object v14

    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    const v23, 0x7f0a00d2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v23, 0x7f0a00c9

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    const v23, 0x7f0a00d3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v23, 0x7f0a00c9

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v15, v0

    iput v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_2
    const v23, 0x7f0a00d4

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v23, 0x7f0a00ca

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v10, v0

    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_3
    const v23, 0x7f0a00d5

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v23, 0x7f0a00cb

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v13, v0

    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v24, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00d6

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_6
    packed-switch v11, :pswitch_data_1

    :goto_3
    const/16 v23, 0x5

    move/from16 v0, v23

    if-eq v11, v0, :cond_7

    const/16 v23, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-static {v0, v11}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :pswitch_4
    const v23, 0x7f0a0003

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :pswitch_5
    const v23, 0x7f0a0004

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/saverestore/ConversationListRestore$ConversationAdapter;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    move-object/from16 v24, v0

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/android/mms/saverestore/ConversationListRestore;->access$800(Lcom/android/mms/saverestore/ConversationListRestore;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0009

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
