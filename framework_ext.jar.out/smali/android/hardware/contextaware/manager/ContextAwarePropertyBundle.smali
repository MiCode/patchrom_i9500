.class public Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
.super Ljava/lang/Object;
.source "ContextAwarePropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    }
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final booleanVal:[Z

.field private static doubleVal:D

.field private static floatVal:F

.field private static integerVal:I

.field private static longVal:J

.field private static stringVal:Ljava/lang/String;

.field private static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    .line 314
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 215
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 216
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 217
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 218
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 219
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 220
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 231
    return-void
.end method

.method static synthetic access$100()[Z
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 24
    sget-wide v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-wide p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide p0
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 24
    sget v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return p0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    .line 24
    sget-wide v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-wide p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object p0
.end method

.method public static getType()I
    .locals 1

    .prologue
    .line 397
    sget v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->type:I

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 304
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 305
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 306
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 307
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 308
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 309
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 311
    return-void
.end method

.method private static setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 388
    sput p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->type:I

    .line 389
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanTypeCode()I
    .locals 1

    .prologue
    .line 333
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleTypeCode()I
    .locals 1

    .prologue
    .line 369
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatTypeCode()I
    .locals 1

    .prologue
    .line 360
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerTypeCode()I
    .locals 1

    .prologue
    .line 342
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongTypeCode()I
    .locals 1

    .prologue
    .line 351
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringTypeCode()I
    .locals 1

    .prologue
    .line 378
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v4, 0x0

    .line 241
    .local v4, value:Ljava/lang/Object;,"TE;"
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 242
    .local v1, i:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v5

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 243
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 248
    .end local v1           #i:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .end local v4           #value:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v4

    .line 241
    .restart local v1       #i:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .restart local v4       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 261
    .local v1, i:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 262
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 263
    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 267
    .end local v1           #i:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_0
    return-void

    .line 260
    .restart local v1       #i:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 287
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 288
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 291
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 292
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    return-void
.end method
