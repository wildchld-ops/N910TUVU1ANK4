.class public Landroid/webkitsec/WebSubPart;
.super Ljava/lang/Object;
.source "WebSubPart.java"


# instance fields
.field private mCid:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/WebSubPart;->mCid:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkitsec/WebSubPart;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkitsec/WebSubPart;->mMimeType:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkitsec/WebSubPart;->mPath:Ljava/lang/String;

    iput-wide p6, p0, Landroid/webkitsec/WebSubPart;->mFileSize:J

    iput-object p5, p0, Landroid/webkitsec/WebSubPart;->mContentUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public fileSize()J
    .locals 2

    iget-wide v0, p0, Landroid/webkitsec/WebSubPart;->mFileSize:J

    return-wide v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mPath:Ljava/lang/String;

    return-object v0
.end method
