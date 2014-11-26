.class public Lcom/android/phone/AssistedDialingList;
.super Landroid/app/Activity;
.source "AssistedDialingList.java"


# static fields
.field private static ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;

.field private static CURRENT_COUNTRY:Ljava/lang/String;

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field private static REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static REF_STRING:Ljava/lang/String;


# instance fields
.field cr:Landroid/content/ContentResolver;

.field private extra:Z

.field private issorted:Z

.field private la:Landroid/widget/SimpleCursorAdapter;

.field private list_sort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list_sort_id:[I

.field private listview:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mCountry_name:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mMCC:Ljava/lang/String;

.field private searchtext:Landroid/widget/EditText;

.field textlength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const-string v0, "refvalue"

    sput-object v0, Lcom/android/phone/AssistedDialingList;->REF_STRING:Ljava/lang/String;

    const-string v0, "current_country"

    sput-object v0, Lcom/android/phone/AssistedDialingList;->CURRENT_COUNTRY:Ljava/lang/String;

    const-string v0, "assisted_dialing_reference_country"

    sput-object v0, Lcom/android/phone/AssistedDialingList;->ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/phone/AssistedDialingList;->textlength:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;

    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort_id:[I

    iput-boolean v1, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    iput-boolean v1, p0, Lcom/android/phone/AssistedDialingList;->extra:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AssistedDialingList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/AssistedDialingList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/AssistedDialingList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/AssistedDialingList;)[I
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort_id:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/AssistedDialingList;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/AssistedDialingList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/AssistedDialingList;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/AssistedDialingList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->extra:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/AssistedDialingList;)Landroid/database/Cursor;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/AssistedDialingList;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCountry_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/AssistedDialingList;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/AssistedDialingList;->mCountry_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/AssistedDialingList;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/AssistedDialingList;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/AssistedDialingList;->mMCC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/AssistedDialingList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/AssistedDialingList;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/AssistedDialingList;->ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/AssistedDialingList;->REF_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/phone/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "AssistedDialingList"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AssistedDialingList;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0906b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AssistedDialingList;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->extra:Z

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    const v2, 0x7f04000b

    iget-object v3, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "country"

    aput-object v5, v4, v6

    new-array v5, v9, [I

    const v8, 0x7f0a001e

    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/AssistedDialingList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/AssistedDialingList$1;-><init>(Lcom/android/phone/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/AssistedDialingList$2;

    invoke-direct {v1, p0}, Lcom/android/phone/AssistedDialingList$2;-><init>(Lcom/android/phone/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "AssistedDialingList"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "AssistedDialingList"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "AssistedDialingList"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
