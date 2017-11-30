//
//  UIImage+LoopMeBinaryImage.m
//  LoopMeSDK
//
//  Created by Dmitriy Lihachov on 10.07.14.
//
//

#import "UIImage+LoopMeBinaryImage.h"

@implementation UIImage (LoopMeBinaryImage)

+ (UIImage *)imageFromDataOfType:(LoopMeImageType)type {
    NSData *data;
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
        ([UIScreen mainScreen].scale == 2.0)) {
        
        switch (type) {
            case LoopMeImageTypeBrowserBack:
                data = [NSData dataWithBytes:lm_navigation_back_icon_2x_png
                                      length:lm_navigation_back_icon_2x_png_len];
                break;
                
            case LoopMeImageTypeBrowserBackActive:
                data = [NSData dataWithBytes:lm_navigation_back_active_icon_2x_png
                                      length:lm_navigation_back_active_icon_2x_png_len];
                break;
                
            default:
                break;
        }
    } else {
        switch (type) {
            case LoopMeImageTypeBrowserBack:
                data = [NSData dataWithBytes:lm_navigation_back_icon_png
                                      length:lm_navigation_back_icon_png_len];
                break;
                
            case LoopMeImageTypeBrowserBackActive:
                data = [NSData dataWithBytes:lm_navigation_back_active_icon_png
                                      length:lm_navigation_back_active_icon_png_len];
                break;
            default:
                break;
        }
    }
    return [UIImage imageWithData:data];
}

// Non-Retina

unsigned char lm_navigation_back_active_icon_png[] = {
    0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d,
    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x12,
    0x08, 0x06, 0x00, 0x00, 0x00, 0x84, 0x9e, 0x84, 0x0f, 0x00, 0x00, 0x00,
    0xf3, 0x49, 0x44, 0x41, 0x54, 0x78, 0xda, 0x9d, 0x92, 0x31, 0x0a, 0xc2,
    0x30, 0x14, 0x86, 0x43, 0x3c, 0x81, 0x9b, 0x4b, 0x27, 0x87, 0x6c, 0xd2,
    0xc9, 0x0b, 0xd4, 0xa1, 0x77, 0xe8, 0x19, 0x94, 0x1e, 0xc1, 0x45, 0xa1,
    0x67, 0x70, 0x51, 0x28, 0xdd, 0x5c, 0x3a, 0x0b, 0xa1, 0xd0, 0x13, 0x78,
    0x09, 0xa9, 0x07, 0xb0, 0x18, 0xd2, 0xd4, 0x67, 0xe0, 0xc9, 0xb3, 0x43,
    0x4c, 0xfd, 0xe1, 0x2f, 0x8f, 0x3f, 0xef, 0xeb, 0x7b, 0x81, 0x30, 0x1f,
    0xc5, 0x71, 0x8c, 0xe5, 0x34, 0x0c, 0x43, 0x99, 0xa6, 0x69, 0x2b, 0x84,
    0xd8, 0xb2, 0x11, 0xda, 0x4b, 0x29, 0x7b, 0x54, 0xd3, 0x34, 0xbd, 0x0f,
    0xb4, 0x4c, 0x92, 0xe4, 0xd1, 0x75, 0x9d, 0x85, 0x8c, 0x31, 0xd6, 0x20,
    0x27, 0xcc, 0x83, 0x20, 0xb8, 0xd4, 0x75, 0x8d, 0xc3, 0x8c, 0x2f, 0xbc,
    0xce, 0xb2, 0xec, 0x03, 0x61, 0x33, 0xc2, 0xe8, 0x21, 0x34, 0x8f, 0xa2,
    0xe8, 0xa6, 0x94, 0x42, 0x08, 0x29, 0x37, 0xcc, 0x39, 0x3f, 0x96, 0x65,
    0xf9, 0x35, 0x0d, 0xed, 0x82, 0x45, 0x9e, 0xe7, 0x14, 0xa2, 0xa0, 0x1b,
    0x2e, 0x8a, 0xe2, 0x3e, 0x0c, 0xbd, 0x61, 0xad, 0xb5, 0xcd, 0xfe, 0x82,
    0xe1, 0x73, 0x20, 0xa1, 0x19, 0x05, 0xbf, 0x05, 0x0f, 0x60, 0x05, 0xb9,
    0x82, 0x80, 0xdc, 0xdb, 0x6f, 0x32, 0x43, 0xc1, 0xd9, 0x19, 0x9b, 0x2d,
    0xfe, 0x03, 0x46, 0x88, 0xfe, 0x60, 0x02, 0x07, 0x57, 0xda, 0xef, 0x84,
    0x51, 0x10, 0xd0, 0x7a, 0x01, 0x6e, 0xc9, 0x26, 0x4e, 0x18, 0x35, 0xdc,
    0x64, 0x47, 0x56, 0x37, 0xf4, 0xbd, 0x32, 0x5f, 0x41, 0xff, 0x89, 0xde,
    0x5f, 0x29, 0xa5, 0xe9, 0xaa, 0x3e, 0x5b, 0xcc, 0xa0, 0xbf, 0x02, 0x3f,
    0xa1, 0xde, 0xbc, 0x00, 0x1d, 0x9c, 0xae, 0x34, 0xa2, 0x74, 0x87, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4e, 0x44, 0xae, 0x42, 0x60, 0x82
};
unsigned int lm_navigation_back_active_icon_png_len = 300;

unsigned char lm_navigation_back_icon_png[] = {
    0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d,
    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x12,
    0x08, 0x06, 0x00, 0x00, 0x00, 0x84, 0x9e, 0x84, 0x0f, 0x00, 0x00, 0x01,
    0x2a, 0x49, 0x44, 0x41, 0x54, 0x78, 0xda, 0x95, 0x93, 0xbd, 0x4a, 0xc5,
    0x40, 0x10, 0x85, 0x13, 0x7d, 0x02, 0xab, 0xd8, 0xa5, 0x10, 0x62, 0x67,
    0x17, 0x8b, 0xd4, 0x16, 0x79, 0x86, 0xd4, 0xb6, 0xfa, 0x06, 0x01, 0x9b,
    0xa4, 0xcc, 0x0b, 0x48, 0x40, 0x1f, 0xc0, 0x22, 0xad, 0x08, 0x97, 0xdb,
    0x24, 0x90, 0x5f, 0x08, 0xf9, 0x29, 0x92, 0x5e, 0xf0, 0x01, 0x14, 0x2f,
    0xb2, 0xe3, 0xac, 0xdc, 0x81, 0x01, 0xb9, 0xc9, 0xde, 0x03, 0x87, 0x6c,
    0xd8, 0xf9, 0xce, 0x0e, 0xb3, 0x89, 0xa6, 0x22, 0xc7, 0x71, 0x68, 0x79,
    0x66, 0x59, 0xd6, 0xc6, 0xf3, 0xbc, 0x2f, 0xd3, 0x34, 0x1f, 0xb4, 0x23,
    0x14, 0xfa, 0xbe, 0x0f, 0xd3, 0x34, 0x41, 0xd7, 0x75, 0x90, 0x24, 0x09,
    0xa8, 0x40, 0xd7, 0xae, 0xeb, 0x7e, 0xe6, 0x79, 0x0e, 0x4d, 0xd3, 0x40,
    0x51, 0x14, 0xd2, 0xa2, 0xaa, 0xaa, 0x45, 0xf8, 0xc4, 0x30, 0x8c, 0xb7,
    0x38, 0x8e, 0x61, 0x1c, 0x47, 0x28, 0xcb, 0x52, 0xa0, 0x09, 0x96, 0xef,
    0x07, 0xe1, 0x3b, 0x14, 0xcc, 0xf3, 0x0c, 0x78, 0x82, 0xa0, 0x62, 0x7c,
    0x72, 0xff, 0x83, 0x2f, 0x6c, 0xdb, 0x7e, 0x4f, 0xd3, 0x14, 0xda, 0xb6,
    0x95, 0x10, 0x3f, 0xed, 0x30, 0xac, 0xeb, 0xfa, 0x53, 0x14, 0x45, 0x72,
    0x20, 0x7f, 0x2d, 0xb2, 0xa2, 0x45, 0xf8, 0x32, 0x0c, 0x43, 0x18, 0x86,
    0x41, 0x0e, 0x44, 0x42, 0x04, 0xae, 0xc3, 0x41, 0x10, 0x7c, 0xec, 0x41,
    0xb6, 0xa1, 0x08, 0xe3, 0x15, 0x50, 0x9b, 0xc7, 0xc3, 0x08, 0x3e, 0xd2,
    0x50, 0x94, 0x43, 0xf8, 0xc0, 0x70, 0x71, 0x83, 0xe0, 0x8e, 0x05, 0x08,
    0xd5, 0xb6, 0x35, 0x12, 0x82, 0x2f, 0xec, 0x4e, 0x85, 0xd2, 0xc9, 0x3c,
    0x00, 0xaf, 0xea, 0x14, 0x37, 0x5e, 0x29, 0x64, 0x15, 0x26, 0xf5, 0x7d,
    0xcf, 0xbb, 0xb8, 0xc2, 0x82, 0x9d, 0x0c, 0x40, 0xaf, 0xc3, 0xa4, 0xba,
    0xae, 0x79, 0xc8, 0x2d, 0x75, 0x81, 0x16, 0x2a, 0xdf, 0x36, 0x89, 0x87,
    0x3c, 0xb3, 0x10, 0xc8, 0xb2, 0xec, 0x47, 0x4e, 0x7a, 0x11, 0xe2, 0x5d,
    0x60, 0xed, 0x39, 0x7a, 0x8b, 0xfe, 0xc6, 0x1f, 0xe6, 0xfe, 0x17, 0x60,
    0x91, 0x46, 0xeb, 0xa8, 0xbe, 0xde, 0x5e, 0x00, 0x00, 0x00, 0x00, 0x49,
    0x45, 0x4e, 0x44, 0xae, 0x42, 0x60, 0x82
};
unsigned int lm_navigation_back_icon_png_len = 3810;

// Retina

unsigned char lm_navigation_back_active_icon_2x_png[] = {
    0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d,
    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x1d, 0x00, 0x00, 0x00, 0x24,
    0x08, 0x06, 0x00, 0x00, 0x00, 0x75, 0xe6, 0x31, 0x6a, 0x00, 0x00, 0x02,
    0x01, 0x49, 0x44, 0x41, 0x54, 0x78, 0xda, 0xbd, 0xd5, 0x3b, 0x48, 0x42,
    0x51, 0x1c, 0xc7, 0xf1, 0xba, 0x46, 0x7a, 0x9d, 0x4a, 0xa4, 0x21, 0xc1,
    0x68, 0x08, 0x44, 0x68, 0x68, 0xc8, 0x41, 0x82, 0x86, 0x1a, 0x05, 0x97,
    0x86, 0x96, 0x04, 0xc7, 0x26, 0xc1, 0x06, 0xa1, 0x35, 0x1a, 0x1a, 0x82,
    0x68, 0x0a, 0x1f, 0xd4, 0x50, 0x20, 0x2e, 0x3e, 0xd0, 0x45, 0x04, 0x41,
    0xc5, 0xe7, 0x55, 0xd3, 0x30, 0x68, 0x68, 0x08, 0x0a, 0xc2, 0x25, 0x88,
    0x4a, 0xc8, 0xb8, 0xa7, 0x9f, 0xd3, 0x7f, 0x48, 0x69, 0xd0, 0x73, 0x0e,
    0x7c, 0x17, 0xef, 0xb9, 0xe7, 0x73, 0x1f, 0xdc, 0xe3, 0x14, 0x63, 0x8c,
    0x5b, 0x18, 0xcb, 0xe8, 0x1a, 0x29, 0xe8, 0x05, 0x05, 0x91, 0x8e, 0x17,
    0xa6, 0x41, 0x07, 0x46, 0xa3, 0xf1, 0xcb, 0xe7, 0xf3, 0x31, 0xbf, 0xdf,
    0xcf, 0x62, 0xb1, 0x18, 0xf3, 0x7a, 0xbd, 0x4c, 0x96, 0xe5, 0x53, 0x1e,
    0xe0, 0x1a, 0x52, 0x9c, 0x4e, 0x27, 0xcb, 0xe7, 0xf3, 0x4c, 0x51, 0x14,
    0x44, 0x01, 0x7e, 0x9b, 0x24, 0x26, 0xa3, 0x13, 0xb3, 0xd9, 0xfc, 0x13,
    0x89, 0x44, 0x06, 0xc0, 0xd0, 0xa2, 0xd1, 0xe8, 0xc4, 0xc0, 0x2d, 0x8d,
    0x46, 0xf3, 0xe8, 0x76, 0xbb, 0x59, 0xb9, 0x5c, 0x26, 0x64, 0x48, 0xb5,
    0x5a, 0x6d, 0x6c, 0xcc, 0x80, 0x2e, 0xad, 0x56, 0x2b, 0x4b, 0x26, 0x93,
    0x7f, 0x80, 0x11, 0x8d, 0x05, 0xee, 0xea, 0xf5, 0xfa, 0x2e, 0xde, 0xd1,
    0xe0, 0xea, 0x69, 0x51, 0x1e, 0x28, 0x86, 0x19, 0xa5, 0xec, 0x76, 0x3b,
    0xcb, 0x64, 0x32, 0xb4, 0x18, 0x0f, 0x14, 0x43, 0x42, 0x1e, 0x83, 0xc1,
    0xf0, 0x11, 0x0a, 0x85, 0x68, 0x11, 0x5e, 0x28, 0xc6, 0x2a, 0xaa, 0x38,
    0x1c, 0x0e, 0x96, 0xcb, 0xe5, 0xc6, 0x02, 0xd1, 0xbf, 0x98, 0x0e, 0x1d,
    0x9b, 0x4c, 0xa6, 0x7e, 0x38, 0x1c, 0xa6, 0x13, 0x79, 0xa1, 0x18, 0x9b,
    0x92, 0x24, 0x3d, 0xb8, 0x5c, 0x2e, 0x56, 0x2a, 0x95, 0xc6, 0xc7, 0xa8,
    0xa1, 0xd8, 0x1c, 0x0a, 0x58, 0x2c, 0x16, 0x35, 0x91, 0x48, 0xd0, 0x64,
    0x5e, 0x28, 0xc6, 0x0e, 0xf6, 0xc6, 0x57, 0x8f, 0xc7, 0x43, 0x9f, 0x01,
    0x2f, 0x14, 0x63, 0x11, 0xc5, 0x6d, 0x36, 0x1b, 0x4b, 0xa7, 0xd3, 0xbc,
    0x30, 0x42, 0x31, 0x74, 0xf8, 0x0c, 0xee, 0x03, 0x81, 0x00, 0x6f, 0x8c,
    0x50, 0xad, 0x56, 0x7b, 0x1e, 0x8f, 0xc7, 0x45, 0x60, 0x84, 0x62, 0x1b,
    0xeb, 0x09, 0xc2, 0x08, 0xcd, 0x66, 0xb3, 0xaa, 0x70, 0xb4, 0x50, 0x28,
    0x88, 0xbf, 0xd3, 0x4a, 0xa5, 0x12, 0x14, 0x8e, 0x16, 0x8b, 0x45, 0xb9,
    0x5e, 0xaf, 0x37, 0xc5, 0xa1, 0xb4, 0x39, 0x4c, 0x03, 0x76, 0x63, 0x43,
    0x78, 0x17, 0x84, 0x52, 0xed, 0x76, 0x7b, 0x1e, 0xf8, 0x05, 0x0e, 0xa8,
    0x82, 0x50, 0xaa, 0x5a, 0xad, 0xae, 0xe3, 0xe0, 0xa3, 0x38, 0x94, 0x92,
    0x30, 0x61, 0x1f, 0x8f, 0xfc, 0x53, 0x10, 0x4a, 0xb5, 0x5a, 0xad, 0x05,
    0x4c, 0xbc, 0x42, 0xaa, 0x20, 0x94, 0xc2, 0xe4, 0x0d, 0xf4, 0x24, 0x08,
    0xa5, 0xb0, 0x7b, 0xcd, 0xe0, 0x24, 0x2f, 0xea, 0x09, 0x42, 0xa9, 0x46,
    0xa3, 0xb1, 0x88, 0x77, 0x5d, 0x14, 0x88, 0x52, 0x80, 0xb7, 0xb1, 0xc8,
    0x8b, 0x20, 0x94, 0xea, 0x74, 0x3a, 0xb3, 0xf8, 0xb6, 0x0f, 0x71, 0x01,
    0xdf, 0xfc, 0xd0, 0xd1, 0x8f, 0x7c, 0x09, 0xb8, 0xf2, 0x1f, 0x88, 0x8b,
    0x53, 0x27, 0x84, 0x52, 0x80, 0x1d, 0x58, 0xbc, 0x3b, 0x0a, 0x4d, 0xa5,
    0x52, 0x77, 0x13, 0x04, 0xa9, 0xc1, 0x9f, 0x08, 0x80, 0x23, 0xdc, 0x55,
    0x7f, 0xc8, 0x9d, 0xee, 0x71, 0x40, 0xa9, 0x66, 0xb3, 0xb9, 0x02, 0xe8,
    0x06, 0xdd, 0xa2, 0x67, 0x74, 0x86, 0xdf, 0xa7, 0x7f, 0x01, 0x6a, 0x5b,
    0xa0, 0xfe, 0xa6, 0x14, 0xfc, 0xf9, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45,
    0x4e, 0x44, 0xae, 0x42, 0x60, 0x82
};
unsigned int lm_navigation_back_active_icon_2x_png_len = 570;


unsigned char lm_navigation_back_icon_2x_png[] = {
    0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d,
    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x1d, 0x00, 0x00, 0x00, 0x24,
    0x08, 0x06, 0x00, 0x00, 0x00, 0x75, 0xe6, 0x31, 0x6a, 0x00, 0x00, 0x01,
    0xc5, 0x49, 0x44, 0x41, 0x54, 0x78, 0xda, 0xbd, 0xd5, 0xb1, 0x4b, 0x02,
    0x71, 0x18, 0xc6, 0xf1, 0xb3, 0x34, 0x3c, 0x74, 0xa8, 0x06, 0x45, 0x87,
    0x22, 0xc4, 0xb1, 0x21, 0xc1, 0x2d, 0x68, 0xc8, 0x45, 0x68, 0x6c, 0x68,
    0x09, 0x09, 0xa7, 0xa6, 0xa0, 0x70, 0xb0, 0x35, 0x1a, 0x42, 0xc4, 0x08,
    0x84, 0xa0, 0xa0, 0x86, 0xfa, 0x03, 0x1a, 0xda, 0x15, 0x24, 0x08, 0x84,
    0xc2, 0x30, 0x08, 0x3d, 0x41, 0x29, 0xc8, 0x04, 0x83, 0xd4, 0x14, 0xd3,
    0x7b, 0x7b, 0x68, 0xf9, 0x41, 0x61, 0x66, 0xde, 0xbd, 0x0f, 0x7c, 0xd6,
    0xfb, 0xde, 0xfd, 0x0e, 0xee, 0x24, 0x22, 0xd2, 0x0d, 0x36, 0x03, 0x67,
    0x90, 0x86, 0x27, 0x38, 0x06, 0xb3, 0x5e, 0xb1, 0x51, 0xd8, 0x72, 0x38,
    0x1c, 0xef, 0xf1, 0x78, 0x9c, 0x12, 0x89, 0x04, 0xe5, 0xf3, 0x79, 0x8a,
    0xc5, 0x62, 0x64, 0xb1, 0x58, 0xa2, 0x7a, 0x04, 0xe7, 0x20, 0x1d, 0x0c,
    0x06, 0xa9, 0x5e, 0xaf, 0xd3, 0xf7, 0x21, 0xfc, 0xaa, 0x65, 0x4c, 0x86,
    0x3d, 0xb7, 0xdb, 0xdd, 0xc9, 0x66, 0xb3, 0xd4, 0x6b, 0xb9, 0x5c, 0x4e,
    0xb3, 0xe0, 0xa2, 0xc9, 0x64, 0x52, 0xc2, 0xe1, 0x30, 0xb5, 0xdb, 0x6d,
    0xfa, 0x6d, 0xaa, 0xaa, 0x0e, 0x1d, 0x9b, 0x84, 0x13, 0xaf, 0xd7, 0x4b,
    0xc5, 0x62, 0x91, 0xfe, 0xb4, 0x21, 0x83, 0x2b, 0x56, 0xab, 0xf5, 0x05,
    0xef, 0xe8, 0xeb, 0xee, 0x31, 0xfd, 0xa2, 0xd8, 0x14, 0x5c, 0xfa, 0xfd,
    0x7e, 0xaa, 0x54, 0x2a, 0x34, 0xf0, 0x06, 0x8c, 0x8d, 0xc0, 0x86, 0xcd,
    0x66, 0xab, 0xa7, 0x52, 0x29, 0xfa, 0xf7, 0x06, 0x08, 0xce, 0xc2, 0x75,
    0x20, 0x10, 0xa0, 0x5a, 0xad, 0x46, 0xc3, 0xad, 0x7f, 0xcc, 0x0c, 0xbb,
    0x2e, 0x97, 0xeb, 0x23, 0x93, 0xc9, 0x90, 0x26, 0xeb, 0x13, 0x5c, 0x30,
    0x1a, 0x8d, 0x0f, 0xa1, 0x50, 0x88, 0x5a, 0xad, 0x16, 0x69, 0xb6, 0x1e,
    0xb1, 0x71, 0x38, 0xf2, 0x78, 0x3c, 0x6a, 0xa1, 0x50, 0x20, 0xed, 0xf7,
    0x33, 0xb8, 0x8c, 0x6f, 0xe3, 0x73, 0x24, 0x12, 0xa1, 0x6e, 0xb7, 0x4b,
    0xfa, 0x4c, 0xc4, 0x9c, 0x70, 0xe1, 0xf3, 0xf9, 0xa8, 0x5c, 0x2e, 0x93,
    0xde, 0x93, 0x30, 0xb3, 0xdd, 0x6e, 0xbf, 0x4f, 0x26, 0x93, 0xc4, 0x35,
    0x49, 0x96, 0xe5, 0x03, 0x45, 0x51, 0x88, 0x73, 0x52, 0x34, 0x1a, 0x6d,
    0x12, 0xf3, 0xa4, 0x6a, 0xb5, 0xaa, 0xb2, 0x47, 0x1b, 0x8d, 0x06, 0xff,
    0x93, 0x76, 0x3a, 0x9d, 0x63, 0xf6, 0x28, 0xc8, 0x70, 0xc3, 0x1b, 0x05,
    0x30, 0xc0, 0x1a, 0xfe, 0x8b, 0x6f, 0x7c, 0x51, 0x61, 0x02, 0x0e, 0x41,
    0xe5, 0x8b, 0x0a, 0x5e, 0x50, 0xf8, 0xa2, 0xc2, 0x08, 0xac, 0xe3, 0xc8,
    0x1b, 0x7c, 0x51, 0xc1, 0x06, 0xa7, 0xa0, 0xf2, 0x45, 0x85, 0x79, 0x28,
    0xf2, 0x45, 0x05, 0x23, 0x6c, 0xe2, 0xc8, 0x9b, 0x7c, 0x51, 0xc1, 0x09,
    0x57, 0xbc, 0x51, 0xc1, 0x07, 0x4f, 0x7c, 0x51, 0x61, 0x0c, 0xb6, 0x71,
    0xe4, 0x6d, 0xbe, 0xa8, 0x30, 0x0d, 0xe9, 0x7e, 0x41, 0x15, 0xd3, 0x2e,
    0x2a, 0x2c, 0xe1, 0xba, 0x2f, 0xbd, 0xa2, 0xa5, 0x52, 0xe9, 0x4e, 0xdb,
    0xa0, 0x20, 0xc3, 0x0e, 0xe2, 0x1f, 0xf4, 0x73, 0xab, 0xfa, 0x44, 0x05,
    0x37, 0x9c, 0xc3, 0x2d, 0x3c, 0xc2, 0x3e, 0x18, 0x3e, 0x01, 0x42, 0x7e,
    0x1f, 0x48, 0xe4, 0xe9, 0xcf, 0x98, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45,
    0x4e, 0x44, 0xae, 0x42, 0x60, 0x82
};
unsigned int lm_navigation_back_icon_2x_png_len = 510;

@end
