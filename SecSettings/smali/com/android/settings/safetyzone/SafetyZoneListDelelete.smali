.class public Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;
.super Landroid/app/ListFragment;
.source "SafetyZoneListDelelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_DEL:I = 0x1

.field private static final SPLIT_STRING_ACCESSPOINT:Ljava/lang/String; = ";and;"

.field private static final SPLIT_STRING_INFO:Ljava/lang/String; = "/and/"

.field private static final TAG:Ljava/lang/String; = "SafetyZoneSettings"

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mListItem:[Ljava/lang/String;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private mCustomListDel:Landroid/view/View;

.field private mPreSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private AddAccessPointToList()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, apName:Ljava/lang/String;
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddAccessPointToList(),  SAFETY_ZONE_LIST is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    :cond_0
    const-string v4, "SafetyZoneSettings"

    const-string v6, "AddAccessPointToList(), there is no safety zone, return false"

    invoke-static {v4, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 196
    :cond_1
    return v4

    .line 180
    :cond_2
    const-string v6, ";and;"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, activeAps:[Ljava/lang/String;
    array-length v6, v1

    if-lez v6, :cond_3

    .line 183
    array-length v6, v1

    new-array v6, v6, [Ljava/lang/String;

    sput-object v6, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mListItem:[Ljava/lang/String;

    .line 186
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 187
    aget-object v6, v1, v3

    const-string v7, "/and/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, activeApinfo:[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 189
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ap["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], post name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ssid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bssid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", frequency is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v6, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mListItem:[Ljava/lang/String;

    aget-object v7, v0, v5

    aput-object v7, v6, v3

    .line 186
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_4
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAccessPointList(), ap["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] activeApinfo.length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 98
    sget-object v2, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 99
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    sget-object v2, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 101
    sget-object v2, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->checkDeleteButtonstate()V

    .line 104
    return-void
.end method

.method private checkButtonState()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->checkDeleteButtonstate()V

    .line 109
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 160
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 165
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0200e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public customlistdelete()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 201
    sget-object v6, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 202
    .local v4, count:I
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(),  count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-lez v4, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, apName:Ljava/lang/String;
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(),  SAFETY_ZONE_LIST is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v3, ""

    .line 209
    .local v3, combinedString:Ljava/lang/String;
    const-string v6, ";and;"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, activeAps:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 211
    aget-object v6, v1, v5

    const-string v7, "/and/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, activeApinfo:[Ljava/lang/String;
    sget-object v6, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 213
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 214
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remained ap info : ap["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], post name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ssid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bssid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", frequency : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";and;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/and/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/and/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/and/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 220
    :cond_1
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(), ap["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] activeApinfo.length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_2
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleted ap info : ap["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], post name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ssid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bssid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", frequency : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v0           #activeApinfo:[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_list"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    .end local v1           #activeAps:[Ljava/lang/String;
    .end local v2           #apName:Ljava/lang/String;
    .end local v3           #combinedString:Ljava/lang/String;
    .end local v5           #i:I
    :cond_4
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    .line 69
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mCustomListDel:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04012c

    sget-object v4, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 77
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mPreSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 80
    const-string v0, "SafetyZoneSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre-checked index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mPreSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mPreSelectedIndex:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->checkButtonState()V

    .line 84
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->setHasOptionsMenu(Z)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 93
    sget-object v1, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 94
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->ToggleAllCheck(Z)V

    .line 95
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, args:Landroid/os/Bundle;
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mPreSelectedIndex:I

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mPreSelectedIndex:I

    .line 49
    const-string v1, "SafetyZoneSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre-selected id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mPreSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 120
    const v0, 0x7f090143

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 121
    const v0, 0x7f0908b7

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 122
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 123
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    .line 124
    invoke-static {}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->checkDeleteButtonstate()V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const v0, 0x7f04011c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->checkButtonState()V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 153
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->customlistdelete()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 149
    :sswitch_1
    const-string v1, "SafetyZoneSettings"

    const-string v2, "MENU_CANCEL is clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b0544 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 61
    invoke-static {}, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->checkDeleteButtonstate()V

    .line 62
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 131
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0200e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
