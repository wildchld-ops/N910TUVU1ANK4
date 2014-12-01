.class Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchItemHolder"
.end annotation


# instance fields
.field checkboxMenuType:Landroid/widget/CheckBox;

.field ivMenuIcon:Landroid/widget/ImageView;

.field switchMenuType:Landroid/widget/Switch;

.field tvMenuSummary:Landroid/widget/TextView;

.field tvMenuTitlte:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SearchListAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;-><init>()V

    return-void
.end method
