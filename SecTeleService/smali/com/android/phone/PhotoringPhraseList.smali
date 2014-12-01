.class public Lcom/android/phone/PhotoringPhraseList;
.super Landroid/app/Activity;
.source "PhotoringPhraseList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;,
        Lcom/android/phone/PhotoringPhraseList$ListViewItemClickListner;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private bCallSetupViewsOnResume:Z

.field private mScreenMode:I

.field private maPhrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field private maRecent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field mcbSelectAll:Landroid/widget/CheckBox;

.field mllSelectAll:Landroid/widget/LinearLayout;

.field mlvPhrases:Landroid/widget/ListView;

.field mlvRecent:Landroid/widget/ListView;

.field mmiDel:Landroid/view/MenuItem;

.field mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

.field mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

.field mtvPhrases:Landroid/widget/TextView;

.field mtvRecent:Landroid/widget/TextView;

.field private selectedItemID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhotoringPhraseList;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/phone/PhotoringPhraseList;->NORMAL_SCREEN:I

    iput v1, p0, Lcom/android/phone/PhotoringPhraseList;->DELETE_SCREEN:I

    iput v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/PhotoringPhraseList;->selectedItemID:I

    iput-boolean v1, p0, Lcom/android/phone/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhotoringPhraseList;)I
    .locals 1
    .param p0    # Lcom/android/phone/PhotoringPhraseList;

    iget v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhotoringPhraseList;J)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoringPhraseList;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhotoringPhraseList;->viewPhrase(J)V

    return-void
.end method

.method private initScreen()V
    .locals 1

    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mtvRecent:Landroid/widget/TextView;

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mtvPhrases:Landroid/widget/TextView;

    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01a6

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    return-void
.end method

.method private loadData(I)V
    .locals 13
    .param p1    # I

    if-nez p1, :cond_3

    iget-object v9, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    :goto_0
    const-string v0, "PhotoringPhraseList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadData list : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v10, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, p1}, Lcom/android/phone/PhotoRingDB;->getPhrasesByType(I)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v0, Lcom/android/phone/PhotoringPhrase;

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/PhotoringPhrase;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadData id = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", message = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v11, Lcom/android/phone/PhotoringPhraseList;->DBG:Z

    if-eqz v11, :cond_4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", path = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v11, Lcom/android/phone/PhotoringPhraseList;->DBG:Z

    if-eqz v11, :cond_5

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", thumb = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v11, Lcom/android/phone/PhotoringPhraseList;->DBG:Z

    if-eqz v11, :cond_6

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", type = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "PhotoringPhraseList"

    invoke-static {v0, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v10}, Lcom/android/phone/PhotoRingDB;->close()V

    return-void

    :cond_3
    iget-object v9, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_4
    const-string v3, "..."

    goto :goto_1

    :cond_5
    const-string v4, "..."

    goto :goto_2

    :cond_6
    const-string v5, "..."

    goto :goto_3
.end method

.method private returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v3, "PhotoringPhraseList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedPhrase.. = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/PhotoringPhraseList;->DBG:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/PhotoringPhraseList;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "callmessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contentPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/PhotoringPhraseList;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoringPhraseList;->finish()V

    return-void

    :cond_0
    const-string v2, "..."

    goto :goto_0

    :cond_1
    const-string v2, "..."

    goto :goto_1
.end method

.method private setupViews()V
    .locals 8

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v2, "PhotoringPhraseList"

    const-string v3, "setupViews"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhotoringPhraseList;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/PhotoringPhraseList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-ne v2, v4, :cond_1

    const v2, 0x7f090813

    invoke-virtual {p0, v2}, Lcom/android/phone/PhotoringPhraseList;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/PhotoringPhraseList$1;

    invoke-direct {v3, p0}, Lcom/android/phone/PhotoringPhraseList$1;-><init>(Lcom/android/phone/PhotoringPhraseList;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v4}, Lcom/android/phone/PhotoringPhraseList;->loadData(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;-><init>(Lcom/android/phone/PhotoringPhraseList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/PhotoringPhraseList$ListViewItemClickListner;

    iget-object v4, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/phone/PhotoringPhraseList$ListViewItemClickListner;-><init>(Lcom/android/phone/PhotoringPhraseList;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mtvRecent:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/phone/PhotoringPhraseList;->loadData(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;-><init>(Lcom/android/phone/PhotoringPhraseList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    :goto_3
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/PhotoringPhraseList$ListViewItemClickListner;

    iget-object v4, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/phone/PhotoringPhraseList$ListViewItemClickListner;-><init>(Lcom/android/phone/PhotoringPhraseList;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mtvPhrases:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    :goto_4
    const v2, 0x7f0a01a4

    invoke-virtual {p0, v2}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x0

    const v4, 0x7f0a01a7

    invoke-virtual {p0, v4}, Lcom/android/phone/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    const v2, 0x7f0907fd

    invoke-virtual {p0, v2}, Lcom/android/phone/PhotoringPhraseList;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v2}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->clear()V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mtvRecent:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v2, v1

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v2}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->clear()V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mtvPhrases:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v2, v1

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/phone/PhotoringPhraseList;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_4
.end method

.method private showToast(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private viewPhrase(J)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/PhotoringPhraseList;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callmessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhotoringPhraseList;->returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->startActivity(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/android/phone/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v4, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/PhotoRingDB;->getPhraseById(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    const-string v5, "file://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4, v2, v3, v1}, Lcom/android/phone/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v1}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/phone/PhotoRingDB;->close()V

    const v0, 0x7f09038c

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->showToast(I)V

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->setupViews()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const-string v1, "PhotoringPhraseList"

    const-string v2, "<<onCreate>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04006e

    invoke-virtual {p0, v1}, Lcom/android/phone/PhotoringPhraseList;->setContentView(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->initScreen()V

    invoke-virtual {p0}, Lcom/android/phone/PhotoringPhraseList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const v1, 0x7f0902d2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0902d4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/Menu;

    const v6, 0x7f0902d4

    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v0, 0x7f0902cf

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v3, v0, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0902d1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v3, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mmiDel:Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PhotoringPhraseList"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->setupViews()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhotoringPhraseList;->finish()V

    :goto_0
    return v0

    :cond_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/PhotoringPhraseList;->startActivity(Landroid/content/Intent;)V

    iput-boolean v0, p0, Lcom/android/phone/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    goto :goto_1

    :pswitch_1
    iput v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->setupViews()V

    goto :goto_1

    :pswitch_2
    iput v1, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->setupViews()V

    goto :goto_1

    :pswitch_3
    new-instance v2, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v2, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->isChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getItem(I)Lcom/android/phone/PhotoringPhrase;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/phone/PhotoringPhrase;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/phone/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-wide v4, v3, Lcom/android/phone/PhotoringPhrase;->id:J

    iget-object v6, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/phone/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->isChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getItem(I)Lcom/android/phone/PhotoringPhrase;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/phone/PhotoringPhrase;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/phone/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-wide v4, v3, Lcom/android/phone/PhotoringPhrase;->id:J

    iget-object v6, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/phone/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/android/phone/PhotoRingDB;->close()V

    iput v1, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    const v0, 0x7f09038c

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoringPhraseList;->showToast(I)V

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->setupViews()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "PhotoringPhraseList"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/Menu;

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-eq v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-eq v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhraseList;->mScreenMode:I

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PhotoringPhraseList"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhraseList;->setupViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    :cond_0
    return-void
.end method
