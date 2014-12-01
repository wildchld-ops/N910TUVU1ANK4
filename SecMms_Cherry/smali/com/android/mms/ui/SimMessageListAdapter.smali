.class public Lcom/android/mms/ui/SimMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SimMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SimMessageListAdapter"


# instance fields
.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxLayout:Landroid/view/View;

.field private mEnableCheckedView:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMsgMultiMode:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

.field mRootLayout:Landroid/widget/LinearLayout;

.field private mSimItemLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mEnableCheckedView:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsMsgMultiMode:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16

    const-string v12, "Mms/SimMessageListAdapter"

    const-string v13, "bindView"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v12, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v12, "address"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v12, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v12, 0x7f0b037b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3

    const v12, 0x7f020280

    :goto_0
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    const v12, 0x7f0b037c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v7, :cond_4

    :goto_1
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0b0378

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBoxLayout:Landroid/view/View;

    const v12, 0x7f0b0379

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v12, 0x7f0b037a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mSimItemLayout:Landroid/widget/LinearLayout;

    const v12, 0x7f0b037e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v12, 0x1

    if-eq v10, v12, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSentTimeInSimList()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSentTimeInSimList()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_6

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v12, 0x7f0b037d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0b0377

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x7f0b037c

    aput v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;[I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mSimItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsMsgMultiMode:Z

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBoxLayout:Landroid/view/View;

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBoxLayout:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mEnableCheckedView:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00f2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mSimItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    const v12, 0x7f020281

    goto/16 :goto_0

    :cond_4
    move-object v1, v7

    goto/16 :goto_1

    :cond_5
    const-string v12, ""

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    const/16 v12, 0x8

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckBoxLayout:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    const/high16 v12, 0x41800000

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mEnableCheckedView:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    const-string v0, "Mms/SimMessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/SimMessageListAdapter;)V

    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 3

    const-string v0, "Mms/SimMessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged mAutoRequery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mAutoRequery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/SimMessageListAdapter;)V

    goto :goto_0
.end method

.method public setMessageListMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsMsgMultiMode:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsMsgMultiMode:Z

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    return-void
.end method
