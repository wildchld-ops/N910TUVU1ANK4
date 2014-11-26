.class public Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "RejectCallWithMsgIconModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$1;,
        Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;,
        Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 3
    .param p1    # Landroid/app/Fragment;

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    instance-of v0, p1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    const-string v0, "RejectCallWithMsgIconModeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findItem(I)Ljava/util/HashMap;
    .locals 5
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_1

    const-string v3, "RejectCallWithMsgIconModeAdapter"

    const-string v4, "ignore add icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "RejectCallWithMsgIconModeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/4 v13, 0x1

    :goto_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getView() position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", isLand : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->log(Ljava/lang/String;)V

    if-nez p2, :cond_4

    new-instance v19, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f040082

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v20, 0x7f0a01d8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    const v20, 0x7f0a01da

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v20, 0x7f0a01c5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    const v20, 0x7f0a01db

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    const/4 v11, 0x0

    const/4 v8, 0x0

    const v20, 0x7f0a01d9

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v20, "santos103gzc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0051

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0050

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->findItem(I)Ljava/util/HashMap;

    move-result-object v14

    if-eqz v14, :cond_8

    const-string v20, "position"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v20, "iconId"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v20, "message"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "item index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", title = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->log(Ljava/lang/String;)V

    sget-object v20, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->TILES_ICONS:[I

    aget v6, v20, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, " "

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getCurrState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;->onRefreshScreenDone()V

    :cond_2
    return-object p2

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0049

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0048

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getCheckStatus()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Checkable;

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Checkable;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const-string v20, "tablet_device"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getCurrState()I

    move-result v5

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_b

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v20, "tablet_device"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_a
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    const-string v20, "RejectCallWithMsgIconModeAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "position "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " content does not exist!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRefreshScreenDoneListener(Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    return-void
.end method
