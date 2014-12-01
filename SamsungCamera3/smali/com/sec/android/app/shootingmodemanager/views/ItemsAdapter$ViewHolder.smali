.class Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public mDownloaded:Landroid/widget/ImageView;

.field public mPosition:I

.field public mText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;-><init>()V

    return-void
.end method
