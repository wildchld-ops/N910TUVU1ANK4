.class public Landroid/provider/GeocodedLocation;
.super Ljava/lang/Object;
.source "GeocodedLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/GeocodedLocation$PhoneNumber;,
        Landroid/provider/GeocodedLocation$Section;,
        Landroid/provider/GeocodedLocation$AreaCode;,
        Landroid/provider/GeocodedLocation$Area;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "geocoded_location"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PATH:Ljava/lang/String; = "location"

.field public static final TYPE_LANDLINE:I = 0x0

.field public static final TYPE_MOBILE:I = 0x1


# instance fields
.field private mAreaCode:Landroid/provider/GeocodedLocation$AreaCode;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://geocoded_location/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/GeocodedLocation;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 1
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/provider/GeocodedLocation$AreaCode;

    invoke-direct {v0, p1}, Landroid/provider/GeocodedLocation$AreaCode;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Landroid/provider/GeocodedLocation;->mAreaCode:Landroid/provider/GeocodedLocation$AreaCode;

    iput p2, p0, Landroid/provider/GeocodedLocation;->mType:I

    return-void
.end method

.method public static getLocation(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation;
    .locals 11
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v8, v7

    :goto_0
    return-object v8

    :cond_0
    # invokes: Landroid/provider/GeocodedLocation$PhoneNumber;->getActualPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    invoke-static {p0, p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v9

    if-nez v9, :cond_1

    move-object v8, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    # getter for: Landroid/provider/GeocodedLocation$PhoneNumber;->type:I
    invoke-static {v9}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$100(Landroid/provider/GeocodedLocation$PhoneNumber;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/GeocodedLocation;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "code=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    # getter for: Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$200(Landroid/provider/GeocodedLocation$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Landroid/provider/GeocodedLocation;

    # getter for: Landroid/provider/GeocodedLocation$PhoneNumber;->type:I
    invoke-static {v9}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$100(Landroid/provider/GeocodedLocation$PhoneNumber;)I

    move-result v0

    invoke-direct {v7, v6, v0}, Landroid/provider/GeocodedLocation;-><init>(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, v7

    goto :goto_0

    :cond_5
    :try_start_1
    # getter for: Landroid/provider/GeocodedLocation$PhoneNumber;->type:I
    invoke-static {v9}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$100(Landroid/provider/GeocodedLocation$PhoneNumber;)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/GeocodedLocation;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "number1<=? and number2>=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    # getter for: Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$200(Landroid/provider/GeocodedLocation$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    # getter for: Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/GeocodedLocation$PhoneNumber;->access$200(Landroid/provider/GeocodedLocation$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public getAreaCode()Landroid/provider/GeocodedLocation$AreaCode;
    .locals 1

    iget-object v0, p0, Landroid/provider/GeocodedLocation;->mAreaCode:Landroid/provider/GeocodedLocation$AreaCode;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/provider/GeocodedLocation;->mType:I

    return v0
.end method
