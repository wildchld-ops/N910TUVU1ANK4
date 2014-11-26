.class public final Lcom/sec/android/inputmethod/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Keyboard:[I

.field public static final Keyboard_Key:[I

.field public static final Keyboard_Key_bottomkeyindex:I = 0xf

.field public static final Keyboard_Key_codes:I = 0x1

.field public static final Keyboard_Key_currentkeyindex:I = 0x10

.field public static final Keyboard_Key_focusstate:I = 0x11

.field public static final Keyboard_Key_iconPreview:I = 0x8

.field public static final Keyboard_Key_isModifier:I = 0x5

.field public static final Keyboard_Key_isRepeatable:I = 0x7

.field public static final Keyboard_Key_isSticky:I = 0x6

.field public static final Keyboard_Key_keyEdgeFlags:I = 0x4

.field public static final Keyboard_Key_keyIcon:I = 0xb

.field public static final Keyboard_Key_keyLabel:I = 0xa

.field public static final Keyboard_Key_keyOutputText:I = 0x9

.field public static final Keyboard_Key_keyboardMode:I = 0x0

.field public static final Keyboard_Key_leftkeyindex:I = 0xc

.field public static final Keyboard_Key_popupCharacters:I = 0x3

.field public static final Keyboard_Key_popupKeyboard:I = 0x2

.field public static final Keyboard_Key_pressedstate:I = 0x12

.field public static final Keyboard_Key_rightkeyindex:I = 0xd

.field public static final Keyboard_Key_topkeyindex:I = 0xe

.field public static final Keyboard_Row:[I

.field public static final Keyboard_Row_keyboardMode:I = 0x1

.field public static final Keyboard_Row_rowEdgeFlags:I = 0x0

.field public static final Keyboard_horizontalGap:I = 0x2

.field public static final Keyboard_keyHeight:I = 0x1

.field public static final Keyboard_keyWidth:I = 0x0

.field public static final Keyboard_verticalGap:I = 0x3

.field public static final com_facebook_friend_picker_fragment:[I

.field public static final com_facebook_friend_picker_fragment_multi_select:I = 0x0

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_fetch_user_info:I = 0x1

.field public static final com_facebook_login_view_login_text:I = 0x2

.field public static final com_facebook_login_view_logout_text:I = 0x3

.field public static final com_facebook_picker_fragment:[I

.field public static final com_facebook_picker_fragment_done_button_background:I = 0x6

.field public static final com_facebook_picker_fragment_done_button_text:I = 0x4

.field public static final com_facebook_picker_fragment_extra_fields:I = 0x1

.field public static final com_facebook_picker_fragment_show_pictures:I = 0x0

.field public static final com_facebook_picker_fragment_show_title_bar:I = 0x2

.field public static final com_facebook_picker_fragment_title_bar_background:I = 0x5

.field public static final com_facebook_picker_fragment_title_text:I = 0x3

.field public static final com_facebook_place_picker_fragment:[I

.field public static final com_facebook_place_picker_fragment_radius_in_meters:I = 0x0

.field public static final com_facebook_place_picker_fragment_results_limit:I = 0x1

.field public static final com_facebook_place_picker_fragment_search_text:I = 0x2

.field public static final com_facebook_place_picker_fragment_show_search_box:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->Keyboard:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Key:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Row:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010007

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->com_facebook_friend_picker_fragment:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->com_facebook_login_view:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->com_facebook_picker_fragment:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->com_facebook_place_picker_fragment:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sec/android/inputmethod/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    :array_0
    .array-data 4
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
    .end array-data

    :array_1
    .array-data 4
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
    .end array-data

    :array_2
    .array-data 4
        0x7f010016
        0x7f010017
    .end array-data

    :array_3
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data

    :array_4
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    :array_5
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    :array_6
    .array-data 4
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
