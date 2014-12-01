.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetupSpamNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpamAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method public constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;)V

    move-object v1, p2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    const v3, 0x7f0b03a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    const v3, 0x7f0b039f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v3, 0x7f0b03a1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    const v3, 0x7f0b01a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02b2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v4, 0x7f0c02b1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02b3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02b4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0c02b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v10, 0x7f0b01a2

    const v9, 0x7f0b039d

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;)V

    move-object v2, p2

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    if-eqz v0, :cond_4

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400af

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b039a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v4, 0x7f0b0399

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b039b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0399

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    if-nez p1, :cond_1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v5, 0x7f0c02b2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mEnableCheckedView:Z
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2400(Lcom/android/mms/spam/SetupSpamNumberList;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_3
    :goto_3
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1900(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2500(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_4
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mEnableCheckedView:Z
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2400(Lcom/android/mms/spam/SetupSpamNumberList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    const-string v4, "Mms/SetupSpamNumberList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScreenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v6, v6, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

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

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_4
    return-object v2

    :cond_5
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b0

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b039e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    const v4, 0x7f0b039f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0b039b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0365

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b039c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0b02e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2300(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const v4, 0x7f0b02e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v5, 0x7f0c02b1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->Conact_Number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v5, 0x7f0c02b3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v5, 0x7f0c02b4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v5, 0x7f0c02b5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const/high16 v4, 0x41800000

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    :cond_f
    iget-object v4, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->spamList:Ljava/util/ArrayList;

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

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2402(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v2, v2, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
