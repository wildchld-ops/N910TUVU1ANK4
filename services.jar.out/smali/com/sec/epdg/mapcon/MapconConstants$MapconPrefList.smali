.class public Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MapconPrefList"
.end annotation


# instance fields
.field private mMapconPref:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation
.end field

.field private mMapconPrefArray:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPref:Ljava/util/EnumSet;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    new-array v7, v7, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    iput-object v7, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const/4 v1, 0x0

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    invoke-static {v6}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->getMapconRat(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPref:Ljava/util/EnumSet;

    invoke-virtual {v7, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPref:Ljava/util/EnumSet;

    invoke-virtual {v7, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMapconPrefListArray()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method
