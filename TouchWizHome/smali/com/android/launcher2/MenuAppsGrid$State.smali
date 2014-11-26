.class abstract enum Lcom/android/launcher2/MenuAppsGrid$State;
.super Ljava/lang/Enum;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppsGrid$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static final enum UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$1;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$2;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/MenuAppsGrid$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$3;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/MenuAppsGrid$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$4;

    const-string v1, "DOWNLOADED_APPS"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/MenuAppsGrid$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$5;

    const-string v1, "DOWNLOADED_UNINSTALL"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/MenuAppsGrid$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$6;

    const-string v1, "FOLDER_SELECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$7;

    const-string v1, "SHARE_SELECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$8;

    const-string v1, "SEL_APPS_TO_HIDE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$9;

    const-string v1, "SEL_APPS_TO_UNHIDE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$10;

    const-string v1, "MOVE_TO_SECRET_BOX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$11;

    const-string v1, "REMOVE_FROM_SECRET_BOX"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$12;

    const-string v1, "SEL_APPS_TO_ENABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$13;

    const-string v1, "PAGE_EDIT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$14;

    const-string v1, "REMOVE_FOLDER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$State$15;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->$VALUES:[Lcom/android/launcher2/MenuAppsGrid$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->$VALUES:[Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method


# virtual methods
.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
.end method
