.class public final Landroid/provider/GeocodedLocation$Section;
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
    name = "Section"
.end annotation


# static fields
.field public static final CODE_ID:Ljava/lang/String; = "code_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NUMBER_END:Ljava/lang/String; = "number2"

.field public static final NUMBER_START:Ljava/lang/String; = "number1"

.field public static final PATH:Ljava/lang/String; = "section"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://geocoded_location/section"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/GeocodedLocation$Section;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
