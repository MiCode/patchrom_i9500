.class public final Lcom/sec/android/smartface/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/smartface/FaceInfo$Person;,
        Lcom/sec/android/smartface/FaceInfo$PersonInfo;,
        Lcom/sec/android/smartface/FaceInfo$Face;,
        Lcom/sec/android/smartface/FaceInfo$FaceExpression;,
        Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FACE_EXISTENCE:I = 0x1

.field public static final CHECK_FACE_EXISTENCE_WITH_ORIENTATION:I = 0x40

.field public static final CHECK_FACE_ROTATION:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/smartface/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIND_FACES:I = 0x2

.field public static final FIND_FACE_AND_PERSON_INFO:I = 0x8

.field public static final FIND_FACE_COMPONENT:I = 0x20

.field public static final FIND_FACE_POSE_INFO:I = 0x10

.field public static final NEED_TO_PAUSE:I = 0x1

.field public static final NEED_TO_PLAY:I = 0x0

.field public static final NEED_TO_SLEEP:I = 0x0

.field public static final NEED_TO_STAY:I = 0x1


# instance fields
.field public bFaceDetected:Z

.field public bLowLightBackLighting:Z

.field public guideDir:I

.field public horizontalMovement:I

.field public needToPause:I

.field public needToRotate:I

.field public needToStay:I

.field public numberOfPerson:I

.field public person:[Lcom/sec/android/smartface/FaceInfo$Person;

.field public processStatus:I

.field public responseType:I

.field public verticalMovement:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/sec/android/smartface/FaceInfo$1;

    invoke-direct {v0}, Lcom/sec/android/smartface/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/smartface/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    .line 142
    invoke-virtual {p0, p1}, Lcom/sec/android/smartface/FaceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->responseType:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToRotate:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToPause:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToStay:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/smartface/FaceInfo;->bLowLightBackLighting:Z

    .line 210
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    new-array v1, v1, [Lcom/sec/android/smartface/FaceInfo$Person;

    iput-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$Face;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$Face;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    .line 215
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    .line 216
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 217
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 218
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 219
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 221
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->score:I

    .line 223
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->id:I

    .line 225
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    .line 226
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 227
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 229
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    .line 230
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 231
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 233
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    .line 234
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 235
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 237
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    .line 238
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 239
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 241
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    .line 242
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    .line 243
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    .line 244
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    .line 246
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$FaceExpression;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    .line 247
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FaceExpression;->expression:I

    .line 249
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$PersonInfo;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    .line 250
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0           #i:I
    :cond_0
    move v1, v3

    .line 207
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 208
    goto/16 :goto_1

    .line 255
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->responseType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToPause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-boolean v1, p0, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-boolean v1, p0, Lcom/sec/android/smartface/FaceInfo;->bLowLightBackLighting:Z

    if-eqz v1, :cond_1

    :goto_1
    int-to-byte v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->score:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FaceExpression;->expression:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0           #i:I
    :cond_0
    move v1, v3

    .line 158
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 159
    goto/16 :goto_1

    .line 193
    .restart local v0       #i:I
    :cond_2
    return-void
.end method
