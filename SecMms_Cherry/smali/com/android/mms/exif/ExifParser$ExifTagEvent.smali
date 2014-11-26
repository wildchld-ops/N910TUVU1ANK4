.class Lcom/android/mms/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/android/mms/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/android/mms/exif/ExifTag;Z)V
    .locals 0
    .param p1    # Lcom/android/mms/exif/ExifTag;
    .param p2    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/mms/exif/ExifTag;

    iput-boolean p2, p0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
