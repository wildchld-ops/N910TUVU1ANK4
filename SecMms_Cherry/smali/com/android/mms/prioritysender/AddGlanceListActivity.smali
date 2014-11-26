.class public Lcom/android/mms/prioritysender/AddGlanceListActivity;
.super Landroid/app/Activity;
.source "AddGlanceListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final REQUEST_CODE_ADD_THREAD_LIST:I = 0x64

.field private static final REQUEST_CODE_PICK_CONTACTS:I = 0x65

.field private static final TAG:Ljava/lang/String; = "Mms/AddGlanceListActivity"


# instance fields
.field private final mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

.field private mAddFromContacts:Landroid/view/View;

.field private mAddFromThreadList:Landroid/view/View;

.field private mAddedToast:Landroid/widget/Toast;

.field private final mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMaxToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/prioritysender/AddGlanceListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$3;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->showMaxToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/prioritysender/AddGlanceListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/prioritysender/AddGlanceListActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->showAddedToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/prioritysender/AddGlanceListActivity;)Lcom/android/mms/prioritysender/AddGlanceListAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/prioritysender/AddGlanceListActivity;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    return-object v0
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAddedToast(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const v3, 0x7f0c0497

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMaxToast()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mMaxToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const v0, 0x7f0c0464

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mMaxToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startQuery()V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v0, "Mms/AddGlanceListActivity"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id desc LIMIT 20"

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v8

    const-string v2, "address"

    aput-object v2, v1, v5

    const-string v2, "eventType=2"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v0, v6}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_0
    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->updateEmptyViewBackground()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEmptyViewBackground()V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->isEmptyViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f0202a6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 26
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/16 v21, 0x65

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "result"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string v12, ""

    if-eqz v20, :cond_9

    const-string v21, "Mms/AddGlanceListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "selected the contacts size : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/glance/GlanceDBHelper;->getMaxPriority()J

    move-result-wide v16

    invoke-static/range {p0 .. p0}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v7, v6, v13

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_0

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "-"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Lcom/android/mms/glance/GlanceUtils;->isPrioritySender(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    const-string v21, "Mms/AddGlanceListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Found the duplicate contact! address : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " duplicatedCount ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-wide/16 v21, 0x1

    add-long v16, v16, v21

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, v21

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_6

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c016d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c016c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    :cond_6
    if-nez v4, :cond_8

    if-nez v11, :cond_8

    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    :cond_9
    if-nez v4, :cond_d

    const/16 v18, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c045f

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v12, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    :cond_a
    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_4
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_c
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v11, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c045e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_d
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_11

    const/16 v18, 0x0

    if-nez v11, :cond_f

    const v21, 0x7f0c045b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    :cond_e
    :goto_5
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_f
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_10

    const v21, 0x7f0c0461

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_10
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v11, v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0462

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v4, v0, :cond_b

    const/16 v18, 0x0

    if-nez v11, :cond_13

    const v21, 0x7f0c045a

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    :cond_12
    :goto_6
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :cond_13
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_14

    const v21, 0x7f0c0460

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    :cond_14
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v11, v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0463

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->updateEmptyViewBackground()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const v5, 0x7f0c044a

    const-string v1, "Mms/AddGlanceListActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromThreadList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromThreadList:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0449

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromThreadList:Landroid/view/View;

    new-instance v2, Lcom/android/mms/prioritysender/AddGlanceListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$1;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    new-instance v2, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnContentChangedListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnAddClickListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/AddGlanceListActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnContentChangedListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnAddClickListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v1, "Mms/AddGlanceListActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "com.android.contacts"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnContentChangedListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnAddClickListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "Mms/AddGlanceListActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->startQuery()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v1, "Mms/AddGlanceListActivity"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .param p1    # Lcom/android/mms/data/Contact;

    const-string v0, "Mms/AddGlanceListActivity"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/prioritysender/AddGlanceListActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$5;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
