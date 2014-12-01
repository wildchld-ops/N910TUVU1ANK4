.class Lcom/android/settings/homesync/RestoreFragment$ListItem;
.super Ljava/lang/Object;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListItem"
.end annotation


# instance fields
.field private Date:Ljava/lang/String;

.field private Size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Date:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Size:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItem;->Size:Ljava/lang/String;

    return-object v0
.end method
