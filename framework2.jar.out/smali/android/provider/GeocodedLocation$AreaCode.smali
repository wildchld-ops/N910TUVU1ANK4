.class public final Landroid/provider/GeocodedLocation$AreaCode;
.super Ljava/lang/Object;
.source "GeocodedLocation.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/GeocodedLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AreaCode"
.end annotation


# static fields
.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final CITY_NAME:Ljava/lang/String; = "city"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final CODE_ID:Ljava/lang/String; = "code_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PATH:Ljava/lang/String; = "area_code"


# instance fields
.field private mAarea:Landroid/provider/GeocodedLocation$Area;

.field private mCity:Ljava/lang/String;

.field private mCode:Ljava/lang/String;

.field private mCodeId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://geocoded_location/area_code"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/GeocodedLocation$AreaCode;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCodeId:J

    const-string v0, "code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCode:Ljava/lang/String;

    const-string v0, "city"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCity:Ljava/lang/String;

    new-instance v0, Landroid/provider/GeocodedLocation$Area;

    invoke-direct {v0, p1}, Landroid/provider/GeocodedLocation$Area;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mAarea:Landroid/provider/GeocodedLocation$Area;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCity:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/GeocodedLocation$AreaCode;->mAarea:Landroid/provider/GeocodedLocation$Area;

    invoke-virtual {v1}, Landroid/provider/GeocodedLocation$Area;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCity:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/GeocodedLocation$AreaCode;->mAarea:Landroid/provider/GeocodedLocation$Area;

    invoke-virtual {v1}, Landroid/provider/GeocodedLocation$Area;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArea()Landroid/provider/GeocodedLocation$Area;
    .locals 1

    iget-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mAarea:Landroid/provider/GeocodedLocation$Area;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeId()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/GeocodedLocation$AreaCode;->mCodeId:J

    return-wide v0
.end method
