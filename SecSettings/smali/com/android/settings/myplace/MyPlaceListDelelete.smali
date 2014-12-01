.class public Lcom/android/settings/myplace/MyPlaceListDelelete;
.super Landroid/app/ListFragment;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;,
        Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;
    }
.end annotation


# static fields
.field private static PREFIX_COUNT:I

.field private static adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;

.field private static mListItem:[Ljava/lang/String;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private listpopup:Landroid/widget/ListPopupWindow;

.field private mActionMode:Landroid/view/ActionMode;

.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;

.field private mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

.field private select:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private AddAccessPointToList()Z
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string v0, "MyPlaceSettings"

    const-string v1, "AddAccessPointToList(), there is no safety zone, return false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    sub-int v7, v0, v1

    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    sget v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    add-int/2addr v0, v8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ToggleAllCheck(Z)V
    .locals 3

    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->setChecked(IZ)V

    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->notifyDataSetChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    :cond_3
    return-void
.end method

.method static synthetic access$100()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/MyPlaceListDelelete;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->select:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/myplace/MyPlaceListDelelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->select:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    sput-object p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/MyPlaceListDelelete;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02017b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02017d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public customlistdelete()V
    .locals 14

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v13

    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customlistdelete(),  count is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selected item count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v13, [I

    if-lez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    add-int/2addr v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    aput v10, v8, v12

    add-int/lit8 v12, v12, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.settings.MYPLACE_DELETED"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "deleteList"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sput v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040231

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_2
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->setHasOptionsMenu(Z)V

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Lcom/android/settings/myplace/MyPlaceListDelelete$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_5
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040233

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/content/Context;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Lcom/android/settings/myplace/MyPlaceListDelelete$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const v6, 0x7f0901ba

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f090b6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    return-void

    :cond_0
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020177

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f090b6d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02017b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040097

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040096

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    const-string v0, "MyPlaceSettings"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->setChecked(I)V

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const v8, 0x7f090b6d

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    const v4, 0x7f0919fa

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/settings/myplace/MyPlaceListDelelete$1;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$1;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/myplace/MyPlaceListDelelete$2;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$2;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const v4, 0x7f0919fb

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_1
    const-string v4, "MyPlaceSettings"

    const-string v5, "MENU_CANCEL is clicked"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b013b -> :sswitch_1
        0x7f0b07e3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    const v2, 0x7f020177

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02017b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02017d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040231

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->initOptionsMenu(Landroid/view/Menu;)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040233

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/content/Context;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method
