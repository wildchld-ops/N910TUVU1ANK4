.class public Lcom/android/phone/LGTCountryList;
.super Landroid/app/Activity;
.source "LGTCountryList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private SearchTextWatcher:Landroid/text/TextWatcher;

.field private mAllCursor:Landroid/database/MatrixCursor;

.field private mAllcontext:Landroid/content/Context;

.field private mListCountry:Landroid/widget/ListView;

.field private mSearchField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name_kor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LGTCountryList;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    iput-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/LGTCountryList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTCountryList$1;-><init>(Lcom/android/phone/LGTCountryList;)V

    iput-object v0, p0, Lcom/android/phone/LGTCountryList;->SearchTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/LGTCountryList;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTCountryList;JLjava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/phone/LGTCountryList;
    .param p1    # J
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/LGTCountryList;->columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTCountryList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/LGTCountryList;

    iget-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/LGTCountryList;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0    # Lcom/android/phone/LGTCountryList;
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/LGTCountryList;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;
    .locals 0
    .param p0    # Lcom/android/phone/LGTCountryList;
    .param p1    # Landroid/database/MatrixCursor;

    iput-object p1, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/LGTCountryList;Landroid/content/Context;Landroid/database/MatrixCursor;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTCountryList;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/MatrixCursor;

    invoke-direct {p0, p1, p2}, Lcom/android/phone/LGTCountryList;->getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V

    return-void
.end method

.method private columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1    # J
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    return-object v0
.end method

.method private getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040094

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name_kor"

    aput-object v1, v4, v3

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v3

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/android/phone/LGTCountryList;->mListCountry:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v8, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v8, p0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    new-instance v9, Ljava/lang/String;

    const-string v10, "a"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/phone/LGTRoamingData;->getCountry(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    const v9, 0x7f04001a

    invoke-virtual {p0, v9}, Lcom/android/phone/LGTCountryList;->setContentView(I)V

    const v9, 0x7f0a007e

    invoke-virtual {p0, v9}, Lcom/android/phone/LGTCountryList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/phone/LGTCountryList;->mListCountry:Landroid/widget/ListView;

    const v9, 0x7f0a0202

    invoke-virtual {p0, v9}, Lcom/android/phone/LGTCountryList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/phone/LGTCountryList;->mSearchField:Landroid/widget/EditText;

    const-string v9, "_id"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ko_KR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "name_kor"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :goto_0
    const-string v9, "country_num"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/phone/LGTCountryList;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v7, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v1}, Lcom/android/phone/LGTCountryList;->columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v9, "name"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    iput-object p0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    :cond_2
    iget-object v9, p0, Lcom/android/phone/LGTCountryList;->mListCountry:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/android/phone/LGTCountryList;->mSearchField:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/phone/LGTCountryList;->SearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {v8}, Lcom/android/phone/LGTRoamingData;->close()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTRoamingData;->selectCountry(Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/phone/LGTRoamingData;->close()V

    if-nez v0, :cond_0

    const v2, 0x7f0905d5

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->finish()V

    :goto_0
    return-void

    :cond_0
    aget-object v2, v0, v5

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    aget-object v4, v0, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_id"

    invoke-static {v2, v3, p4, p5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_KOR"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_ENG"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const v2, 0x7f0905d4

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/LGTCountryList;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LGTCountryList;->getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V

    return-void
.end method
