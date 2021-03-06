/*
  NOTE: THIS FILE IS AUTOMATICALLY GENERATED. Do not edit
  it by hand.
 */

/* ***********************************************************************
   Open SigComp -- Implementation of RFC 3320 Signaling Compression

   Copyright 2006 Estacado Systems, LLC

   Your use of this code is governed by the license under which it
   has been provided to you. Unless you have a written and signed
   document from Estacado Systems, LLC stating otherwise, your license
   is as provided by the GNU General Public License version 2, a copy
   of which is available in this project in the file named "LICENSE."
   Alternately, a copy of the licence is available by writing to
   the Free Software Foundation, Inc., 59 Temple Place, Suite 330,
   Boston, MA 02110-1307 USA

   Unless your use of this code is goverened by a written and signed
   contract containing provisions to the contrary, this program is
   distributed WITHOUT ANY WARRANTY; without even the implied warranty
   of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   license for additional details.

   To discuss alternate licensing terms, contact info@estacado.net
 *********************************************************************** */


#include "DeflateBytecodes.h"

osc::byte_t osc::DeflateBytecodes::bytecodes[] =
{
  0x15,0x04,0x0F,0x86,0x7C,0xA2,0x91,0x00,0x00,0xA2,
  0x91,0x00,0x03,0x00,0x04,0x00,0x05,0x00,0x06,0x00,
  0x07,0x00,0x08,0x00,0x09,0x00,0x0A,0x01,0x0B,0x01,
  0x0D,0x01,0x0F,0x01,0x11,0x02,0x13,0x02,0x17,0x02,
  0x1B,0x02,0x1F,0x03,0x23,0x03,0x2B,0x03,0x33,0x03,
  0x3B,0x04,0xA0,0x43,0x04,0xA0,0x53,0x04,0xA0,0x63,
  0x04,0xA0,0x73,0x05,0xA0,0x83,0x05,0xA0,0xA3,0x05,
  0xA0,0xC3,0x05,0xA0,0xE3,0x00,0xA1,0x02,0x00,0x01,
  0x00,0x02,0x00,0x03,0x00,0x04,0x01,0x05,0x01,0x07,
  0x02,0x09,0x02,0x0D,0x03,0x11,0x03,0x19,0x04,0x21,
  0x04,0x31,0x05,0xA0,0x41,0x05,0xA0,0x61,0x06,0xA0,
  0x81,0x06,0xA0,0xC1,0x07,0xA1,0x01,0x07,0xA1,0x81,
  0x08,0xA2,0x01,0x08,0xA3,0x01,0x09,0xA4,0x01,0x09,
  0xA6,0x01,0x0A,0xA8,0x01,0x0A,0xAC,0x01,0x0B,0xB0,
  0x01,0x0B,0xB8,0x01,0x0C,0x80,0x20,0x01,0x0C,0x80,
  0x30,0x01,0x0D,0x80,0x40,0x01,0x0D,0x80,0x60,0x01,
  0x8A,0x02,0x1C,0x01,0xA1,0x36,0x9F,0xB2,0x1D,0x01,
  0xA1,0x38,0x9F,0xAC,0x17,0xC1,0x38,0x00,0x9F,0xA6,
  0x17,0x08,0x0F,0xA1,0x38,0x04,0xA6,0xFB,0x80,0xE5,
  0x07,0x80,0xDF,0xE5,0x80,0xE6,0x00,0x0E,0xA0,0x42,
  0x89,0x1D,0x03,0x2A,0xFB,0x04,0x21,0x55,0x06,0x21,
  0xA2,0x91,0x0E,0x2C,0x61,0x07,0x16,0x86,0x1D,0x04,
  0xA1,0x34,0xEA,0x02,0x80,0x9A,0x8A,0x1E,0x20,0xA0,
  0x65,0x04,0x07,0x00,0x17,0x80,0x40,0x11,0x01,0x30,
  0xA0,0xBF,0x00,0x00,0xA0,0xC0,0xA0,0xC7,0x80,0x40,
  0x29,0x01,0xA1,0x90,0xA1,0xFF,0xA0,0x90,0x17,0x50,
  0x80,0x40,0x11,0x09,0xA0,0x46,0x13,0x22,0x21,0x01,
  0x13,0x21,0x01,0x23,0x16,0x9F,0xD1,0x08,0x10,0x04,
  0x12,0x50,0x04,0x22,0x1D,0x51,0x22,0x9F,0xD7,0x06,
  0x12,0x51,0x1D,0x05,0x20,0x9F,0xCF,0x06,0x10,0x2F,
  0x08,0x10,0x04,0x12,0x50,0x04,0x26,0x1D,0x53,0x26,
  0x9F,0xC0,0x06,0x14,0x53,0x0E,0x20,0x63,0x14,0x54,
  0x52,0x23,0x22,0x50,0x52,0x16,0x9F,0x9E,0x23,0xA1,
  0x34,0xA1,0x36,0x56,0x86,0xA1,0xE6,0x06
};

osc::byte_t *
osc::DeflateBytecodes::getBytecodes()
{
  return bytecodes+2;
}

osc::u16
osc::DeflateBytecodes::getSize()
{
  return sizeof(bytecodes)-2;
}

osc::u16
osc::DeflateBytecodes::getLocation()
{
  return (bytecodes[1]&0x0f) * 64 + 64;
}
