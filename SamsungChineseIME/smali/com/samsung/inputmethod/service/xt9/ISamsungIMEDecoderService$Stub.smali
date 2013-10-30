.class public abstract Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;
.super Landroid/os/Binder;
.source "ISamsungIMEDecoderService.java"

# interfaces
.implements Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

.field static final TRANSACTION_ImXT9AddMdb:I = 0x1a

.field static final TRANSACTION_ImXT9DeleteMdb:I = 0x1b

.field static final TRANSACTION_ImXT9ExportMdb:I = 0x1d

.field static final TRANSACTION_ImXT9ImportMdb:I = 0x1c

.field static final TRANSACTION_ImXT9ResetMdb:I = 0x1e

.field static final TRANSACTION_XT9AWCandidatesList:I = 0x20

.field static final TRANSACTION_XT9AWChooseCand:I = 0x29

.field static final TRANSACTION_XT9AWClearInput:I = 0x22

.field static final TRANSACTION_XT9AWDelSearch:I = 0x23

.field static final TRANSACTION_XT9AWGetActiveIndex:I = 0x2a

.field static final TRANSACTION_XT9AWGetNthCandidate:I = 0x21

.field static final TRANSACTION_XT9AWGetNumSymbs:I = 0x24

.field static final TRANSACTION_XT9AWSearch:I = 0x1f

.field static final TRANSACTION_XT9AWSetCapsLock:I = 0x28

.field static final TRANSACTION_XT9AWSetShift:I = 0x25

.field static final TRANSACTION_XT9AWSetShiftMode:I = 0x27

.field static final TRANSACTION_XT9AWSetUnShift:I = 0x26

.field static final TRANSACTION_XT9KORCandidatesList:I = 0x2c

.field static final TRANSACTION_XT9KORChooseCand:I = 0x34

.field static final TRANSACTION_XT9KORClearInput:I = 0x2e

.field static final TRANSACTION_XT9KORDecodeHangul:I = 0x36

.field static final TRANSACTION_XT9KORDelSearch:I = 0x2f

.field static final TRANSACTION_XT9KORDeletePreSyms:I = 0x31

.field static final TRANSACTION_XT9KORGetActiveIndex:I = 0x35

.field static final TRANSACTION_XT9KORGetCompleteLenght:I = 0x30

.field static final TRANSACTION_XT9KORGetNthCandidate:I = 0x2d

.field static final TRANSACTION_XT9KORGetPredictionList:I = 0x37

.field static final TRANSACTION_XT9KORSearch:I = 0x2b

.field static final TRANSACTION_XT9KORSetShift:I = 0x32

.field static final TRANSACTION_XT9KORSetUnShift:I = 0x33

.field static final TRANSACTION_imXT9CHNAddOneChar:I = 0x7

.field static final TRANSACTION_imXT9CHNChooseCand:I = 0x11

.field static final TRANSACTION_imXT9CHNDelUDBPhrase:I = 0x16

.field static final TRANSACTION_imXT9CHNEnableErrorCorrect:I = 0x17

.field static final TRANSACTION_imXT9CHNEnableFullSentence:I = 0x19

.field static final TRANSACTION_imXT9CHNGetCandsList:I = 0x10

.field static final TRANSACTION_imXT9CHNGetPredictionList:I = 0x13

.field static final TRANSACTION_imXT9CHNGetPrefixCount:I = 0xa

.field static final TRANSACTION_imXT9CHNGetPrefixs:I = 0xb

.field static final TRANSACTION_imXT9CHNGetRefinedSpell:I = 0x12

.field static final TRANSACTION_imXT9CHNGetSpell:I = 0x9

.field static final TRANSACTION_imXT9CHNGetSuffixCount:I = 0xd

.field static final TRANSACTION_imXT9CHNGetSuffixs:I = 0xe

.field static final TRANSACTION_imXT9CHNPYEnableMohuPairs:I = 0x14

.field static final TRANSACTION_imXT9CHNProcessBackspace:I = 0x8

.field static final TRANSACTION_imXT9CHNReset:I = 0x6

.field static final TRANSACTION_imXT9CHNSTREnableComponent:I = 0x15

.field static final TRANSACTION_imXT9CHNSetActivePrefix:I = 0xc

.field static final TRANSACTION_imXT9CHNSetActiveSuffix:I = 0xf

.field static final TRANSACTION_imXT9CHNSetMdbPriorityHigh:I = 0x18

.field static final TRANSACTION_imXT9FreeUdb:I = 0x5

.field static final TRANSACTION_imXT9SetInputMode:I = 0x2

.field static final TRANSACTION_imXT9SetLanguage:I = 0x1

.field static final TRANSACTION_imXT9SetSKBValue:I = 0x3

.field static final TRANSACTION_imXT9StoreUdb:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 566
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9SetLanguage(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v3, v7

    .line 61
    .local v3, _arg1:Z
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9SetInputMode(IZ)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:I
    .end local v3           #_arg1:Z
    :sswitch_3
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, _arg1:I
    invoke-virtual {p0, v0, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9SetSKBValue(II)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_4
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9StoreUdb()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9FreeUdb()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNReset()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v0, v8

    .line 102
    .local v0, _arg0:C
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNAddOneChar(C)I

    move-result v6

    .line 103
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v0           #_arg0:C
    .end local v6           #_result:I
    :sswitch_8
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNProcessBackspace()I

    move-result v6

    .line 111
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v6           #_result:I
    :sswitch_9
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetSpell()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetPrefixCount()I

    move-result v6

    .line 127
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v6           #_result:I
    :sswitch_b
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 136
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetPrefixs(Ljava/util/List;)I

    move-result v6

    .line 137
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 144
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #_result:I
    :sswitch_c
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNSetActivePrefix(I)I

    move-result v6

    .line 148
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_d
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetSuffixCount()I

    move-result v6

    .line 156
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v6           #_result:I
    :sswitch_e
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .restart local v2       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetSuffixs(Ljava/util/List;)I

    move-result v6

    .line 166
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 173
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #_result:I
    :sswitch_f
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNSetActiveSuffix(I)I

    move-result v6

    .line 177
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_10
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    .local v5, _arg2:I
    invoke-virtual {p0, v1, v3, v5}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetCandsList(Ljava/util/List;II)I

    move-result v6

    .line 191
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 198
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_result:I
    :sswitch_11
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNChooseCand(I)I

    move-result v6

    .line 202
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 208
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_12
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetRefinedSpell()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, _arg0:Ljava/lang/String;
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 221
    .local v4, _arg1:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    invoke-virtual {p0, v0, v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNGetPredictionList(Ljava/lang/String;Ljava/util/List;)I

    move-result v6

    .line 222
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 229
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    .end local v6           #_result:I
    :sswitch_14
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNPYEnableMohuPairs(I)I

    move-result v6

    .line 233
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_15
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v7

    .line 242
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNSTREnableComponent(Z)I

    move-result v6

    .line 243
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v6           #_result:I
    :cond_1
    move v0, v3

    .line 241
    goto :goto_1

    .line 249
    :sswitch_16
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNDelUDBPhrase(I)Z

    move-result v6

    .line 253
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v6, :cond_2

    move v3, v7

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v0           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_17
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v7

    .line 262
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNEnableErrorCorrect(Z)I

    move-result v6

    .line 263
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v6           #_result:I
    :cond_3
    move v0, v3

    .line 261
    goto :goto_2

    .line 269
    :sswitch_18
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v0, v7

    .line 272
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNSetMdbPriorityHigh(Z)I

    move-result v6

    .line 273
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v6           #_result:I
    :cond_4
    move v0, v3

    .line 271
    goto :goto_3

    .line 279
    :sswitch_19
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v0, v7

    .line 282
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->imXT9CHNEnableFullSentence(Z)I

    move-result v6

    .line 283
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v6           #_result:I
    :cond_5
    move v0, v3

    .line 281
    goto :goto_4

    .line 289
    :sswitch_1a
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->ImXT9AddMdb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 295
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1b
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->ImXT9DeleteMdb(Ljava/lang/String;)I

    move-result v6

    .line 305
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1c
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->ImXT9ImportMdb(Ljava/lang/String;)I

    move-result v6

    .line 315
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 321
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1d
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->ImXT9ExportMdb(Ljava/lang/String;)I

    move-result v6

    .line 325
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 331
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1e
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->ImXT9ResetMdb()I

    move-result v6

    .line 333
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 339
    .end local v6           #_result:I
    :sswitch_1f
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v0, v8

    .line 342
    .local v0, _arg0:C
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWSearch(C)I

    move-result v6

    .line 343
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v0           #_arg0:C
    .end local v6           #_result:I
    :sswitch_20
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWCandidatesList(Ljava/util/List;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 359
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    :sswitch_21
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWGetNthCandidate(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    .end local v0           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_22
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWClearInput()I

    move-result v6

    .line 371
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v6           #_result:I
    :sswitch_23
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWDelSearch()I

    move-result v6

    .line 379
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v6           #_result:I
    :sswitch_24
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWGetNumSymbs()I

    move-result v6

    .line 387
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v6           #_result:I
    :sswitch_25
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWSetShift()I

    move-result v6

    .line 395
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v6           #_result:I
    :sswitch_26
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWSetUnShift()I

    move-result v6

    .line 403
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v6           #_result:I
    :sswitch_27
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWSetShiftMode(I)I

    move-result v6

    .line 413
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_28
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWSetCapsLock()I

    move-result v6

    .line 421
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    .end local v6           #_result:I
    :sswitch_29
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWChooseCand(I)I

    move-result v6

    .line 431
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 437
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_2a
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9AWGetActiveIndex()I

    move-result v6

    .line 439
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 445
    .end local v6           #_result:I
    :sswitch_2b
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v0, v8

    .line 448
    .local v0, _arg0:C
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORSearch(C)I

    move-result v6

    .line 449
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 455
    .end local v0           #_arg0:C
    .end local v6           #_result:I
    :sswitch_2c
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 459
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v3, v7

    .line 460
    .local v3, _arg1:Z
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORCandidatesList(Ljava/util/List;Z)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 467
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    .end local v3           #_arg1:Z
    :sswitch_2d
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORGetNthCandidate(I)Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v0           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORClearInput()I

    move-result v6

    .line 479
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 485
    .end local v6           #_result:I
    :sswitch_2f
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORDelSearch()I

    move-result v6

    .line 487
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 493
    .end local v6           #_result:I
    :sswitch_30
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORGetCompleteLenght()I

    move-result v6

    .line 495
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 501
    .end local v6           #_result:I
    :sswitch_31
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 504
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORDeletePreSyms(I)I

    move-result v6

    .line 505
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 511
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_32
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORSetShift()I

    move-result v6

    .line 513
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 519
    .end local v6           #_result:I
    :sswitch_33
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORSetUnShift()I

    move-result v6

    .line 521
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 527
    .end local v6           #_result:I
    :sswitch_34
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORChooseCand(I)I

    move-result v6

    .line 531
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 537
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_35
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORGetActiveIndex()I

    move-result v6

    .line 539
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 545
    .end local v6           #_result:I
    :sswitch_36
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORDecodeHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_37
    const-string v8, "com.samsung.inputmethod.service.xt9.ISamsungIMEDecoderService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .restart local v0       #_arg0:Ljava/lang/String;
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 560
    .restart local v4       #_arg1:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    invoke-virtual {p0, v0, v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->XT9KORGetPredictionList(Ljava/lang/String;Ljava/util/List;)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
