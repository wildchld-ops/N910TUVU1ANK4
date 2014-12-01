.class Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetupSpamKeywordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpamAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private spamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;)V

    move-object v1, p2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    const v3, 0x7f0b03a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f0b03a1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v1
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v10, 0x7f0b02e4

    const/4 v9, 0x0

    const v8, 0x7f0b039d

    const/16 v7, 0x8

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;)V

    move-object v2, p2

    const-string v5, "Mms/SetupSpamKeywordList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Spamkeyword idx : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " filter = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_0
    const v4, 0x7f0b039e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v4, 0x7f0b039b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0365

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b03a0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2100(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v5, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEnableCheckedView:Z
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const-string v4, "Mms/SetupSpamKeywordList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScreenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v6, v6, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " checked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const/high16 v4, 0x41800000

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2402(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v2, v2, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
